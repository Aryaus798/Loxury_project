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
    public partial class Viewcart : System.Web.UI.Page
    {
        ConClass obj1 = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_grid();
            }
        }
        public void bind_grid()
        {
            string sel = "select * from Cart_tab";
            DataSet ds = obj1.fun_exeAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }



        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtquan = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            string productPrice = "Select Price from Product_tab where Product_Id='" + Session["productId"] + "' ";
            string SingleProductAmount = obj1.fun_exescalar(productPrice);
            //int singleProductAmount = Convert.ToInt32(SingleProductAmount);
            int totalAmount = Convert.ToInt32(SingleProductAmount) * Convert.ToInt32(txtquan.Text);
            string strup = "update Cart_tab set Quantity=" + txtquan.Text + ", Total_price='" + totalAmount + "'where Cart_Id='" + getid + "'";
            int i1 = obj1.Fun_exenonquery(strup);
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from Cart_tab where Cart_Id=" + getid + "";
            int i1 = obj1.Fun_exenonquery(del);
            bind_grid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string checkCart = "SELECT COUNT(*) FROM Cart_tab WHERE User_Id ='" + Session["uid"] + "'";
            int itemCount = Convert.ToInt32(obj1.fun_exescalar(checkCart));

            if (itemCount == 0)
            {
                Response.Write("<script>alert('Your cart is empty. Please add items to the cart before confirming.');</script>");
                return; 
            }
            string s1 = "SELECT MAX(Cart_Id) FROM Cart_tab";
            string cartid = obj1.fun_exescalar(s1);
            int cart = Convert.ToInt32(cartid);

            float grandTotal = 0.0f;

            for (int i = 1; i <= cart; i++)
            {
                
                string s2 = "SELECT * FROM Cart_tab WHERE Cart_Id = " + i+"";
                SqlDataReader dr = obj1.fun_exeReader(s2);

                int userid = 0;
                int quantity = 0;
                int productid = 0;
                int totalprice = 0;

                while (dr.Read())
                {
                    userid = Convert.ToInt32(dr["User_Id"]);
                    productid = Convert.ToInt32(dr["Product_Id"]);
                    quantity = Convert.ToInt32(dr["Quantity"]);
                    totalprice = Convert.ToInt32(dr["Total_Price"]);
                }
                grandTotal += totalprice;
                dr.Close();
                string ordins = "INSERT INTO Order_tab VALUES ('" + Session["uid"] + "','" + productid + "','" + quantity + "','" + totalprice + "','Confirmed','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
                int i2 = obj1.Fun_exenonquery(ordins);
                string del = "DELETE FROM Cart_tab WHERE Cart_Id = " + i+"";
                int i3 = obj1.Fun_exenonquery(del);

                
            }
            string bil = "INSERT INTO Bill_Table VALUES ('" + Session["uid"] + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + grandTotal + "')";
            int i4 = obj1.Fun_exenonquery(bil);

            Response.Redirect("Viewbill.aspx");
        }
    }
}
