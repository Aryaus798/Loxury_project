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
    public partial class Feedback : System.Web.UI.Page
    {
        ConClass obj1 = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_Insertfeed";
            //input parameters
            cmd.Parameters.AddWithValue("@uid", Session["uid"]);
            cmd.Parameters.AddWithValue("@feedmsg", TextBox1.Text);
            cmd.Parameters.AddWithValue("@rplymsg", "");
            cmd.Parameters.AddWithValue("@sts", "active");
    
            //output parameters
            SqlParameter sp = new SqlParameter();
            sp.DbType = DbType.Int32;
            sp.ParameterName = "@status";
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            obj1.Fn_nonquery(cmd);
            int outputval = Convert.ToInt32(sp.Value);
            if (outputval == 1)
            {
                Label1.Text = "Submitted";
            }
        }
    }
}