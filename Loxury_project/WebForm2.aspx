<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Loxury_project.WebForm2" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
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
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
        <table class="form-table">
            <tr>
                <td class="label">Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Email</td>
                <td>
                    <asp:TextBox ID="TextBox2" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" CssClass="error-message"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error-message"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Age</td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Above 18" MaximumValue="80" MinimumValue="18" CssClass="error-message"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Address</td>
                <td>
                    <asp:TextBox ID="TextBox4" CssClass="input-box" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Phone</td>
                <td>
                    <asp:TextBox ID="TextBox5" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Format" ValidationExpression="^[6789]\d{9}$" CssClass="error-message"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Pincode</td>
                <td>
                    <asp:TextBox ID="TextBox6" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Gender</td>
                <td>
                    <asp:TextBox ID="TextBox7" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Username</td>
                <td>
                    <asp:TextBox ID="TextBox9" CssClass="input-box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Password</td>
                <td>
                    <asp:TextBox ID="TextBox10" CssClass="input-box" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox11" CssClass="input-box" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox11" ErrorMessage="Password and confirm password must be same" CssClass="error-message"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="Button1" CssClass="submit-button" runat="server" OnClick="Button1_Click" Text="Register" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

