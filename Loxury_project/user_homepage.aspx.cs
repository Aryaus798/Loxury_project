using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Loxury_project
{
    public partial class user_homepage : System.Web.UI.Page
    {
        ConClass obj1 = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from Category_table";
                DataSet ds = obj1.fun_exeAdapter(sel);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int Cat_Id = Convert.ToInt32(e.CommandArgument);
            Session ["sid"] = Cat_Id;
            Response.Redirect("Viewproducts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }
    }
}