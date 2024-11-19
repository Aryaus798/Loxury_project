<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="user_homepage.aspx.cs" Inherits="Loxury_project.user_homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        body {
            background-color: white; /* Light yellowish background */
            font-family: Arial, sans-serif;
          /*  margin: 0;
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
             width: 604px;
         }
         .auto-style2 {
             width: 196px;
         }
         .product-item {
    border-top: 1px solid #ddd;
    border-left: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    margin: 10px 0 10px -1px; /* negative margin to remove gap */
    padding: 10px;
    display: inline-block;
}

.product-item:first-child {
    border-left: none;
}

.product-item:last-child {
    border-right: 1px solid #ddd;
}

.product-list {
    list-style: none; /* Remove bullet points */
    padding: 0; /* Remove default padding */
    margin: 0; /* Remove default margin */
}

.category-list { /* Changed from .product-item to .img-box */
    border: 1px solid #ccc; /* Add a border around each item */
    border-radius: 5px; /* Round the corners */
    padding: 15px; /* Add some padding */
    margin: 10px 0; /* Space between items */
    text-align: center; /* Center text */
    transition: transform 0.3s; /* Smooth hover effect */
}

.category-list:hover { /* Changed from .product-item:hover to .img-box:hover */
    transform: scale(1.05); /* Slightly enlarge the item on hover */
}

.category-list h3 { /* Changed from .product-item h3 to .img-box h3 */
    font-size: 1.5em; /* Adjust the font size for product name */
    margin-bottom: 10px; /* Space below the name */
}

.category-list p { /* Changed from .product-item p to .img-box p */
    font-size: 1em; /* Adjust font size for description */
    color: #555; /* Lighter color for description */
}


.add-to-cart:hover {
    background-color: #218838; /* Darker green on hover */
}

         .auto-style3 {
             width: 196px;
             height: 32px;
         }
         .auto-style4 {
             height: 32px;
         }


         .auto-style5 {
             width: 1240px;
         }
         .auto-style6 {
             height: 32px;
             width: 1240px;
         }


         
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
           

              
                <asp:DataList  ID="DataList1" runat="server" RepeatColumns="5" Width="1205px" CellPadding="2" CellSpacing="2" CssClass="product-list" Height="389px">
                    <ItemTemplate>
                        <div class="category-list">
                        <table class="w-100">
                            <tr>
                                <td>
                                    
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="119px" ImageUrl='<%# Eval("Image") %>' Width="122px" CssClass="img-box" CommandArgument='<%# Eval("Cat_Id") %>' OnCommand="ImageButton1_Command" />
                                       
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                            </div>
                    </ItemTemplate>
                </asp:DataList>
             
            

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">
           

              
                <asp:Button ID="Button1" runat="server" BackColor="#FF9900" OnClick="Button1_Click" Text="FEEDBACK" Width="1240px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
