<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Viewbill.aspx.cs" Inherits="Loxury_project.Viewbill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
    <style type="text/css">
        .auto-style1 {
            width: 288px;
        }
        .auto-style2 {
            width: 92px;
        }
        
    .table {
        width: 100%;
        border-collapse: collapse;
    }
    .table th, .table td {
        padding: 10px;
        text-align: left;
        border: 1px solid #ddd;
    }
    .table th {
        background-color: #f2f2f2;
    }
    .table-striped tr:nth-child(even) {
        background-color: #f9f9f9;
    }
        .auto-style3 {
            margin-left: 160px;
        }
        .auto-style4 {
            width: 229px;
        }
    </style>


  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
         <tr>
             <td class="auto-style1">&nbsp;</td>
             <td>
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="#FF9900" Text="Bill Details" Width="269px"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">&nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">&nbsp;</td>
             <td>Bill_Id:&nbsp;&nbsp; <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bill_date:<asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                 </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 <table class="w-100">
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style2">&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </td>
             <td style="font-family: 'Bahnschrift Light SemiCondensed'">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
    <Columns>
        <asp:TemplateField HeaderText="Product Image">
            <ItemTemplate>
                <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("Image") %>' Height="100px" Width="100px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
      
    </Columns>
</asp:GridView>

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <table class="w-100">
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Name:</td>
                         <td> <asp:Label ID="Label5" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Address:&nbsp;&nbsp;</td>
                         <td>
                 <asp:Label ID="Label6" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Phone:</td>
                         <td>
                 <asp:Label ID="Label7" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Email:&nbsp;&nbsp;</td>
                         <td>
                 <asp:Label ID="Label8" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Order_Id:</td>
                         <td class="auto-style3">
                 <asp:Label ID="Label9" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Order_Date:&nbsp;&nbsp;</td>
                         <td class="auto-style3">
                 <asp:Label ID="Label10" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Order_Status:</td>
                         <td class="auto-style3"><asp:Label ID="Label11" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="font-family: 'Microsoft YaHei UI'; font-size: 25px; font-style: normal; color: #000000">Total_Amount:&nbsp;&nbsp;</td>
                         <td class="auto-style3">
                 <asp:Label ID="Label12" runat="server" Text="Label" Font-Names="Microsoft YaHei UI" Font-Size="25px"></asp:Label>
                         </td>
                     </tr>
                 </table>
                 <br />
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" BackColor="#FF9900" OnClick="Button1_Click" Text="Payment" />
&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>

        
    </asp:Content>
