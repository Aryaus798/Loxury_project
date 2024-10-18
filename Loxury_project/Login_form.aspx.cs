using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loxury_project
{
    public partial class Login_form : System.Web.UI.Page
    {
        ConClass obj1 = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select Count(Reg_Id) from Login_table where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
            string cid = obj1.fun_exescalar(s);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string s1 = "select Reg_Id from Login_table where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
                string regid = obj1.fun_exescalar(s1);
                Session["uid"] = regid;
                string s2 = "select Log_type from Login_table where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
                string Log_type = obj1.fun_exescalar(s2);
                if (Log_type == "admin")
                {
                    Response.Redirect("admin_homepage.aspx");
                }
                else if (Log_type == "user")
                {
                    Response.Redirect("user_homepage.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid";
            }
        }
    }
}