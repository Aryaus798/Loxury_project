<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewsingleproduct.aspx.cs" Inherits="Loxury_project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body{ 
            background-color:lightgoldenrodyellow;
        }
        .auto-style1 {
            width: 243px;
        }
        .auto-style2 {
            width: 374px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
            width: 229px;
        }
        .auto-style6 {
            width: 229px;
        }
        .auto-style7 {
            width: 243px;
            height: 32px;
        }
        .auto-style8 {
            width: 374px;
            height: 32px;
        }
        .auto-style9 {
            width: 243px;
            height: 254px;
        }
        .auto-style10 {
            width: 374px;
            height: 254px;
        }
        .auto-style11 {
            height: 254px;
        }
        .auto-style12 {
            width: 243px;
            height: 91px;
        }
        .auto-style13 {
            width: 374px;
            height: 91px;
        }
        .auto-style14 {
            height: 91px;
        }
        .auto-style15 {
            width: 100%;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Image ID="Image1" runat="server" Height="235px" Width="331px" />
            </td>
            <td class="auto-style11">
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Castellar"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label2" runat="server" Text="Label" Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Text="Label" Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                             <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="addcart"></asp:TextBox>
&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" ForeColor="Red" ValidationGroup="addcart"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                             &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Names="Bahnschrift Light SemiCondensed" ForeColor="Black" Height="49px" Text="ADD TO CART" Width="165px" ValidationGroup="addcart" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Names="Bahnschrift Light SemiCondensed" ForeColor="Black" Height="49px" Text="CONTINUE" Width="167px" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
