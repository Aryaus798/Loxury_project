using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Loxury_project
{
    public partial class paymentpage : System.Web.UI.Page
    {
        ConClass clsobj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strins = "insert into Bankdetails values('" + TextBox1.Text + "','" + Session["uid"] + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = clsobj.Fun_exenonquery(strins);
            string accountNumber = TextBox1.Text;
            if (Session["uid"] != null)
            {
                int userId = Convert.ToInt32(Session["uid"]);
                BankService.ServiceClient client = new BankService.ServiceClient();

                string balance = client.GetAccountBalance(userId, accountNumber);

                Label2.Text = "Balance: " + balance;

                client.Close();
            }
            else
            {
                Label2.Text = "User not logged in.";
            }
            Panel1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string accountNumber = TextBox4.Text;
            string purchasedAmount = TextBox5.Text;

            if (Session["uid"] != null)
            {
                int userId = Convert.ToInt32(Session["uid"]);
                using (BankService.ServiceClient client = new BankService.ServiceClient())
                {
                    try
                    {
                        // Call the WCF service to update the balance
                        string updateStatus = client.UpdateBalance(userId, accountNumber, purchasedAmount);

                        // Handle the response from the WCF service
                        if (updateStatus == "success")
                        {
                            // Update the order status in the database
                            string orderUpdateQuery = "UPDATE Order_tab SET Order_Status = 'Paid' WHERE User_Id = '" + userId + "' AND Order_Status = 'Confirmed'";
                            int rowsAffected = clsobj.Fun_exenonquery(orderUpdateQuery);

                            string resetTotalQuery = "UPDATE Bill_Table SET Grant_Total = 0 WHERE User_Id = '" + userId + "' AND Grant_Total > 0";
                            clsobj.Fun_exenonquery(resetTotalQuery);


                            string productUpdateQuery = $@"
                                 UPDATE p
                                     SET Stock_Quantity = CONVERT(INT, Stock_Quantity) - CONVERT(INT, od.Quantity)
                                     FROM Product_tab p
                               INNER JOIN Order_tab od ON od.Product_Id = p.Product_Id
                                WHERE od.User_Id = '{userId}' AND od.Order_Status = 'Paid'";

                            int productsUpdated = clsobj.Fun_exenonquery(productUpdateQuery);

                            if (rowsAffected > 0)
                            {
                                Label1.Text = "Payment successful. Order status updated to Paid.";
                                if (productsUpdated > 0)
                                {
                                    Label1.Text += " Stock quantities updated successfully.";
                                }
                                else
                                {
                                    Label1.Text += " However, stock quantities could not be updated.";
                                }
                            }
                            else
                            {
                                Label1.Text = "Payment successful, but failed to update order status.";
                            }
                        }
                        else
                        {
                            
                            Label1.Text = "Payment failed: " + updateStatus; 
                        }
                    }
                    catch (Exception ex)
                    {
                        
                        Label1.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
            else
            {
                Label1.Text = "User not logged in.";
            }
        }
    }
}    
