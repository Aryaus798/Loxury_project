<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="user_regform.aspx.cs" Inherits="Loxury_project.user_regform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
    <title>User Registration</title>
     <style type="text/css">
        body {
            background-color: #fefbd8; /* Light yellowish background */
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
    <body>
    <form id="form1">
        <table class="auto-style1">
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
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Names="Algerian" Text="Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Names="Algerian" Text="Email"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Font-Names="Algerian" Text="Age"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Above 18" MaximumValue="80" MinimumValue="18" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Names="Algerian" Text="Address"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Font-Names="Algerian" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Format" ValidationExpression="^[6789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Font-Names="Algerian" Text="Pincode"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Font-Names="Algerian" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style3"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Font-Names="Algerian" Text="Username"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Font-Names="Algerian" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
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
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Font-Names="Algerian" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox11" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
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
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="Register" BackColor="#FFCC00" Font-Names="Algerian" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</asp:Content>
