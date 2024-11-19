<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="viewfeed.aspx.cs" Inherits="Loxury_project.viewfeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 260px;
        }
      
        .auto-style2 {
            border-collapse: collapse;
            margin-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" Width="828px" Height="168px" DataKeyNames="User_Id" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                <Columns>
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Feedback_Message" HeaderText="Feedback" />
                     <asp:CommandField HeaderText="Reply" SelectText="Send Reply" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
