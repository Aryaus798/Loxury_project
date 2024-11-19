<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Loxury_project.Product" %>
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
        .auto-style1 {
            width: 605px;
        }
        .auto-style2 {
            width: 299px;
        }
        .auto-style3 {
            width: 221px;
        }
        .auto-style4 {
            width: 348px;
        }
        .auto-style5 {
            width: 299px;
            height: 32px;
        }
        .auto-style6 {
            width: 221px;
            height: 32px;
        }
        .auto-style7 {
            width: 348px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Cate_Name" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" >
                    <asp:ListItem Value="1">Rings</asp:ListItem>
                    <asp:ListItem Value="2">Bracelets</asp:ListItem>
                    <asp:ListItem Value="3">Necklaces</asp:ListItem>
                    <asp:ListItem Value="4">Pendant</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Product_Name" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Image" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Price" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Description" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Stock" Font-Bold="True" Font-Names="Bahnschrift SemiLight" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Names="Arial Rounded MT Bold" OnClick="Button1_Click" Text="Insert" />
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Names="Calisto MT" ForeColor="#000099" OnClick="Button2_Click" Text="Edit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Product_Id"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
            OnRowUpdating="GridView1_RowUpdating" AutoGenerateColumns="False" CssClass="table table-striped">
            <Columns>
                  <asp:CommandField ShowEditButton="True" />
                <%--<asp:BoundField DataField="txtNameID" HeaderText="Product Name" />--%>
                <asp:TemplateField HeaderText="Product_Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNameID" runat="server" Text='<%# Bind("Product_Name") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Product_Name") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <img src='<%# Eval("Image") %>' alt="Product Image" style="width:100px; height:auto;" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Image") %>' />
                    </EditItemTemplate>
                </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescriptionID" runat="server" Text='<%# Bind("Description") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Description") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPriceID" runat="server" Text='<%# Bind("Price") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Price") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stock_Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtQuantityID" runat="server" Text='<%# Bind("Stock_Quantity") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Stock_Quantity") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product_Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtStatusID" runat="server" Text='<%# Bind("Product_Status") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Product_Status") %>
                    </ItemTemplate>
                </asp:TemplateField>
              
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Panel>


                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
