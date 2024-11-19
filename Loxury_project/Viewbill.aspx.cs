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
    public partial class Viewbill : System.Web.UI.Page
    {
        ConClass obj1 = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["uid"] != null)
                {
                    
                    billid();
                    userdetails();
                    ordereddata();
                    totalamt(); 
                    product();
                }
            }
         }

      
        public void billid()
        {
            string billitems = @"
        select TOP 1 
            Bill_Id, 
            CONVERT(VARCHAR(10), Date, 120) AS Date 
        from Bill_Table 
        where User_Id='" + Session["uid"] + "' order by Date DESC";


         SqlDataReader dr = obj1.fun_exeReader(billitems);

            if (dr.Read())  
            {
                Label13.Text = dr["Bill_Id"].ToString();
                Label14.Text = dr["Date"].ToString();
            }
            dr.Close();
        }
        public void totalamt()
        {
            string amt = "select SUM(CONVERT(DECIMAL(18, 2), Grant_Total)) from Bill_Table where User_Id=" + Session["uid"] + "";
            object totamt = obj1.fun_exescalar(amt);
            if (totamt != DBNull.Value)
            {
                decimal totalAmount = Convert.ToDecimal(totamt);
                Label12.Text = totalAmount.ToString("F2");
            }
            else
            {
                Label12.Text = "0.00";
            }
        }
        public void userdetails()
        {
            string userdata = "select User_Name,Address,Phone_Number,Email from User_Reg_Tab where User_Id='" + Session["uid"] + "'";
            SqlDataReader dr1 = obj1.fun_exeReader(userdata);
            while (dr1.Read())
            {
                Label5.Text = dr1["User_Name"].ToString();
                Label6.Text = dr1["Address"].ToString();
                Label7.Text = dr1["Phone_Number"].ToString();
                Label8.Text = dr1["Email"].ToString();
            }
            dr1.Close();
        }
        public void ordereddata()
        {
            string orditems = "select Order_Id,CONVERT(VARCHAR(10), Date, 120) AS Date,Order_Status from Order_tab where User_Id='" + Session["uid"] + "'";
            SqlDataReader sdr = obj1.fun_exeReader(orditems);
            while (sdr.Read())
            {
                Label9.Text = sdr["Order_Id"].ToString();
                Label10.Text = sdr["Date"].ToString();
                Label11.Text = sdr["Order_Status"].ToString();
            }
            sdr.Close();
        }
        public void product()
        {
            // Assuming that Session["uid"] is safely retrieved and sanitized
            string userId = Session["uid"].ToString();

            string productsQuery = @"
            SELECT 
            p.Image, 
            p.Product_Name, 
            CAST(od.Quantity AS INT) AS Quantity, 
            CAST(od.Total_Price AS DECIMAL(18, 2)) AS Price, 
            (CAST(od.Quantity AS INT) * CAST(od.Total_Price AS DECIMAL(18, 2))) AS TotalPrice  
            FROM  Order_tab od INNER JOIN Product_tab p ON od.Product_Id = p.Product_Id WHERE 
            od.User_Id = '" + userId + "' and od.Order_Status = 'Confirmed'";  

    DataSet ds = obj1.fun_exeAdapter(productsQuery, null); 
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("paymentpage.aspx");
        }
    }
}

    
