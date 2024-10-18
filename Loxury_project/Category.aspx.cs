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
    public partial class Category : System.Web.UI.Page
    {
        ConClass obj = new ConClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/cate_image/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string strins = "insert into Category_table values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + p + "')";


            int i = obj.Fun_exenonquery(strins);
            if (i == 1)
            {
                Label4.Text = "Inserted successfully.";
            }

        }
        public void BindGrid()
        {
            string query = "SELECT * FROM Category_table";
            DataSet dr = obj.fun_exeAdapter(query);

            GridView1.DataSource = dr;
            GridView1.DataBind();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
            BindGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtName = GridView1.Rows[i].FindControl("txtNameID") as TextBox;
            TextBox txtDescription = GridView1.Rows[i].FindControl("txtDescriptionID") as TextBox;
            FileUpload fileUpload = GridView1.Rows[i].FindControl("FileUpload1") as FileUpload;
            HiddenField hiddenField = GridView1.Rows[i].FindControl("HiddenField1") as HiddenField;

            string pic;
            if (fileUpload.HasFile)
            {
                pic = "~/cate_image/" + fileUpload.FileName;
                fileUpload.SaveAs(MapPath(pic));
            }
            else
            {
                pic = hiddenField.Value;
            }


            string strup = $"UPDATE Category_table SET Name='{txtName.Text}', Description='{txtDescription.Text}', Image='{pic}' WHERE Cat_Id={getid}";
            int rowsAffected = obj.Fun_exenonquery(strup);

            Label5.Text = rowsAffected > 0 ? "Updated successfully." : "Update failed. No rows affected.";
            GridView1.EditIndex = -1;
            BindGrid();
        }
    }
}








