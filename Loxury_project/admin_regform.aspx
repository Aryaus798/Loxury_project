<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="admin_regform.aspx.cs" Inherits="Loxury_project.admin_regform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
   <title>User Registration</title>
    <style type="text/css">
        body {
            background-color: #fefbd8; /* Light yellowish background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
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
        .auto-style2 {
        width: 341px;
    }
        .auto-style3 {
            width: 119px;
        }
        .auto-style5 {
            width: 341px;
            height: 32px;
        }
        .auto-style6 {
            width: 229px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            width: 119px;
            height: 32px;
        }
        .auto-style10 {
        width: 341px;
        height: 52px;
    }
    .auto-style11 {
        width: 119px;
        height: 52px;
    }
    .auto-style12 {
        height: 52px;
    }
    .auto-style13 {
        width: 726px;
    }
    .auto-style14 {
        height: 52px;
        width: 261px;
    }
    .auto-style15 {
        height: 32px;
        width: 261px;
    }
    .auto-style16 {
        width: 261px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <form id="form1" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Algerian" Text="Name"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Names="Algerian" Text="Email"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Font-Names="Algerian" Text="Address"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Names="Algerian" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Format" ValidationExpression="^[6789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3"></td>
                <td class="auto-style16"></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Font-Names="Algerian" Text="Username"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Font-Names="Algerian" Text="Password"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3"></td>
                <td class="auto-style16">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" BackColor="#FFCC00" Width="112px" Font-Names="Algerian" />
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
                <td class="auto-style15"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
       </body>
</asp:Content>
