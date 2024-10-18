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
    public partial class WebForm3 : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["productId"] != null)
                {
                    string sel = "select Product_Name,Image,Price,Description from Product_tab where Product_Id='" + Session["productId"].ToString() + "'";
                    SqlDataReader dr = obj.fun_exeReader(sel);
                    while (dr.Read())
                    {
                        Label1.Text = dr["Product_Name"].ToString();
                        Label2.Text = dr["Price"].ToString();
                        Label3.Text = dr["Description"].ToString();
                        Image1.ImageUrl = dr["Image"].ToString();
                    }
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_homepage.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlQuery = "select max(Cart_id) from Cart_tab";
            string lastId = obj.fun_exescalar(sqlQuery);
            int newId = 0;
            if (lastId == "")
            {
                newId = 1;
            }
            else
            {
                newId = Convert.ToInt32(lastId) + 1;
            }
            string productPrice = "Select Price from Product_tab where Product_Id='" + Session["productId"] + "' ";
            string SingleProductAmount = obj.fun_exescalar(productPrice);
            //int singleProductAmount = Convert.ToInt32(SingleProductAmount);
            int totalAmount = Convert.ToInt32(SingleProductAmount) * Convert.ToInt32(TextBox1.Text);

            string InsCart = "insert into Cart_tab values('" + newId + "','" + Session["uid"] + "','" + Session["productId"] + "','" + TextBox1.Text + "','" + totalAmount + "')";
            int insCount = obj.Fun_exenonquery(InsCart);
            if (insCount == 1)
            {
                Label4.Text = "ITEM ADDED TO CART";
                // txt_count.Text = " ";
                Response.Redirect("Viewcart.aspx");
            
            }
        }
    }
}
