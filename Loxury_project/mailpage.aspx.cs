using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Loxury_project
{
    public partial class mailpage : System.Web.UI.Page
    {
        ConClass obj1 = new ConClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userId = Session["uid"].ToString();
                string sel = "SELECT Email FROM User_Reg_Tab WHERE User_Id = '" + userId + "'";
                SqlDataReader dr = obj1.fun_exeReader(sel);

                if (dr.Read())
                {
                    txtTo.Text = dr["Email"].ToString();
                }
                txtFrom.Text = "aryaus5798@gmail.com";
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select Username from Login_table where Reg_Id='" + Session["uid"] + "'";
            string s = obj1.fun_exescalar(sel);
            string toEmail = txtTo.Text;
            string sub = txtSubject.Text;
            string reply = txtMessage.Text;
            SendEmail2("Arya", "aryaus5798@gmail.com", "vbbv kejs gyvb mhnu", s, toEmail, sub, reply);
            string upd = "update Feedback set Status='Inactive', Reply_Message='" + txtMessage.Text + "' where User_Id='" + Session["uid"] + "'";
            int i = obj1.Fun_exenonquery(upd);
            Label1.Text = "Send successfully";
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
