using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loxury_project
{
    public partial class Product : System.Web.UI.Page
    {
        ConClass obj = new ConClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategoryDropDown();
                bind_grid();
            }
        }
        public void BindCategoryDropDown()
        {
            string query = "SELECT Cat_Id, Name FROM Category_table";
            DataSet ds = obj.fun_exeAdapter(query);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Name"; // Display name
            DropDownList1.DataValueField = "Cat_Id"; // Value is the ID
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/prod_image/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string strins = "insert into Product_tab values ('" + DropDownList1.SelectedItem.Value + "','" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','Available')";
            int i = obj.Fun_exenonquery(strins);
            if (i == 1)
            {
                Label7.Text = "Inserted";
            }
        }

        public void bind_grid()
        {
            string str = "select * from Product_tab";
            DataSet ds = obj.fun_exeAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            bind_grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
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

            TextBox txtName = GridView1.Rows[i].FindControl("txtNameID") as TextBox;
            TextBox txtDescription = GridView1.Rows[i].FindControl("txtDescriptionID") as TextBox;
            TextBox txtPrice = GridView1.Rows[i].FindControl("txtPriceID") as TextBox;
            TextBox txtQuantity = GridView1.Rows[i].FindControl("txtQuantityID") as TextBox;
            TextBox txtStatus = GridView1.Rows[i].FindControl("txtStatusID") as TextBox;
            FileUpload fileUpload = GridView1.Rows[i].FindControl("FileUpload1") as FileUpload;
            HiddenField hiddenField = GridView1.Rows[i].FindControl("HiddenField1") as HiddenField;

            string pic;
            if (fileUpload.HasFile)
            {
                pic = "~/prod_image/" + fileUpload.FileName;
                fileUpload.SaveAs(MapPath(pic));
            }
            else
            {
                pic = hiddenField.Value;
            }

            string strup = $"UPDATE Product_tab SET Product_Name='{txtName.Text}', Image='{pic}', Price='{txtPrice.Text}', Description='{txtDescription.Text}', Stock_Quantity='{txtQuantity.Text}',Product_Status='{txtStatus.Text}' WHERE Product_Id={getid}";
            int rowsAffected = obj.Fun_exenonquery(strup);

            Label8.Text = rowsAffected > 0 ? "Updated successfully." : "Update failed. No rows affected.";
            GridView1.EditIndex = -1;
            bind_grid();
        }
    }
}
