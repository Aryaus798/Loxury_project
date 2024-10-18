<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Viewproducts.aspx.cs" Inherits="Loxury_project.Viewproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
             width: 230px;
         }
         .auto-style3 {
             width: 40px;
         }
         .product-item {
    list-style: none; /* Remove bullet points */
    padding: 0; /* Remove default padding */
    margin: 0; /* Remove default margin */
}

.product-list { /* Changed from .product-item to .img-box */
    border: 1px solid #ccc; /* Add a border around each item */
    border-radius: 5px; /* Round the corners */
    padding: 15px; /* Add some padding */
    margin: 10px 0; /* Space between items */
    text-align: center; /* Center text */
    transition: transform 0.3s; /* Smooth hover effect */
}

.product-list:hover { /* Changed from .product-item:hover to .img-box:hover */
    transform: scale(1.05); /* Slightly enlarge the item on hover */
}

.product-list h3 { /* Changed from .product-item h3 to .img-box h3 */
    font-size: 1.5em; /* Adjust the font size for product name */
    margin-bottom: 10px; /* Space below the name */
}

.product-list p { /* Changed from .product-item p to .img-box p */
    font-size: 1em; /* Adjust font size for description */
    color: #555; /* Lighter color for description */
}

.add-to-cart {
    background-color: #28a745; /* Green background for button */
    color: white; /* White text */
    border: none; /* Remove border */
    padding: 10px 15px; /* Padding for the button */
    border-radius: 5px; /* Round the button corners */
    cursor: pointer; /* Change cursor to pointer on hover */
    transition: background-color 0.3s; /* Smooth background change */
}

.add-to-cart:hover {
    background-color: #218838; /* Darker green on hover */
}

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" Height="360px" Width="1135px" CssClass="product-item" >
                    <ItemTemplate>
                        <div class="product-list">
                        <table class="w-100">
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="118px" ImageUrl='<%# Eval("Image") %>' Width="118px" CommandArgument='<%# Eval("Product_Id") %>' OnCommand="ImageButton1_Command" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>' Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                            </div>
                    </ItemTemplate>
                </asp:DataList>
            </td>
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

</asp:Content>
