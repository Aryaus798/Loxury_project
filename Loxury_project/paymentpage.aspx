<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="paymentpage.aspx.cs" Inherits="Loxury_project.paymentpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 227px;
    }
    .auto-style3 {
        width: 552px;
    }
    .auto-style4 {
        width: 444px;
    }
        .auto-style5 {
            width: 444px;
            height: 37px;
        }
        .auto-style6 {
            width: 227px;
            height: 37px;
        }
        .auto-style7 {
            height: 37px;
        }
    .auto-style8 {
        width: 48px;
    }
    .auto-style9 {
        width: 175px;
    }
    .auto-style10 {
        width: 444px;
        margin-left: 80px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
                     <table class="auto-style3" __designer:mapid="26">
                         <tr __designer:mapid="27">
                             <td class="auto-style7" __designer:mapid="28"></td>
                         </tr>
                     </table>
                 <table class="w-100">
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">Account_No:</td>
                         <td>
                                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                             </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">IFSC_Code</td>
                         <td>
                                 <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                             </td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">Balance_amt</td>
                         <td>
                                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                             </td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td class="auto-style6">&nbsp;</td>
                         <td class="auto-style7">
                                 <asp:Button ID="Button3" runat="server" BackColor="#FF9900" OnClick="Button2_Click" Text="Submit Details" />
                                 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                             </td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>
                             <asp:Panel ID="Panel1" runat="server" Visible="False">
                                 <table class="w-100">
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">&nbsp;</td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">Account_No:</td>
                                         <td>
                                             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">Total Amount</td>
                                         <td>
                                             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">&nbsp;</td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style8">&nbsp;</td>
                                         <td class="auto-style9">&nbsp;</td>
                                         <td>
                                             <asp:Button ID="Button4" runat="server" BackColor="#FF9900" OnClick="Button4_Click" Text="Make Payment" />
                                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                         </td>
                                     </tr>
                                 </table>
                             </asp:Panel>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style4">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>
