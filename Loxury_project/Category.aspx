<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Loxury_project.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        body {
            background-color: white; /* Light yellowish background */
            font-family: Arial, sans-serif;
           /* margin: 0;
            padding: 20px;*/
        }
        .form-table {
            width: 100%;
            margin: auto;
            border-collapse: collapse;
        }
        .form-table td {
            padding: 10px;
            vertical-align: middle;
        }
        .label {
            color: #ff9900; /* Darker yellowish-orange for labels */
            font-weight: bold;
        }
        .input-box {
            width: 100%;
            max-width: 359px; /* Maximum width for input boxes */
            padding: 5px;
            border: 1px solid #ffcc00; /* Yellowish border */
            border-radius: 5px;
        }
        .error-message {
            color: #CC0000; /* Red for error messages */
        }
        .submit-button {
            background-color: #ffcc00; /* Yellowish-orange button */
            border: none;
            color: #fff; /* White text */
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }
        .submit-button:hover {
            background-color: #ffb300; /* Darker on hover */
        }
        .auto-style3 {
               width: 174px;
           }
    .auto-style4 {
               width: 270px;
           }
           .auto-style5 {
               width: 111px;
           }
        </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#CC0000" Text="Category_Name"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#CC0000" Text="Description"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#CC0000" Text="Image"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Names="Broadway" ForeColor="Black" Text="Insert" OnClick="Button1_Click" ValidationGroup="InsertGroup" />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" BackColor="#FF9933" Font-Names="Broadway" OnClick="Button2_Click" Text="Edit Category" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
            <asp:Panel ID="Panel1" runat="server" Visible="False">
    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Cat_Id"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
            OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" CssClass="table table-striped">
            <Columns>
                <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
                  <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNameID" runat="server" Text='<%# Bind("Name") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Name") %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescriptionID" runat="server" Text='<%# Bind("Description") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Description") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <img src='<%# Eval("Image") %>' alt="Image" style="width:100px; height:auto;" CssClass="img-thumbnail" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" Accept=".jpg, .jpeg, .png, .gif" />
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Image") %>' />
                    </EditItemTemplate>
                </asp:TemplateField>
               
         
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Panel>





                      
                    
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
            
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
