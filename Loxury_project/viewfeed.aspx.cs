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
    public partial class viewfeed : System.Web.UI.Page
    {
        ConClass clsobj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sel = "SELECT ur.User_Id, ur.User_Name, ur.Email, f.Feedback_Message FROM User_Reg_Tab ur INNER JOIN Feedback f ON ur.User_Id = f.User_Id WHERE f.Status = 'active'";
          
            DataSet ds = clsobj.fun_exeAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string userId = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
            Session["uid"] = userId;
            Response.Redirect("mailpage.aspx");
        }
    }
}