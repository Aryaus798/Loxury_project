using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loxury_project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ConClass obj = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select max(Reg_Id) from Login_table";
            string maxregid = obj.fun_exescalar(str);
            int reg_id = 0;
            if (maxregid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                reg_id = newregid + 1;
            }
            string ins = "insert into User_Reg_Tab values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','active')";
            int i = obj.Fun_exenonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into Login_table values(" + reg_id + ",'" + TextBox9.Text + "','" + TextBox10.Text + "','user')";
                int j = obj.Fun_exenonquery(inslog);
            }
        }
    }
}