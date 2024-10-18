using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Loxury_project
{
    public partial class Viewproducts : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["sid"] != null)
                {

                    string sel = "select * from Product_tab where Cat_Id='" + Session["sid"].ToString() + "'";
                    DataSet ds = obj.fun_exeAdapter(sel);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                }
            }
            
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            
            int productId = Convert.ToInt32(e.CommandArgument);
            Session["productId"] = productId; 
            Response.Redirect("viewsingleproduct.aspx");
        }
    }
}