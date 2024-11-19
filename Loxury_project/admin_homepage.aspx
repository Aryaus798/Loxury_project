<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="admin_homepage.aspx.cs" Inherits="Loxury_project.admin_homepage" %>
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
            width: 13px;
        }
        .auto-style2 {
            width: 372px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="item_section layout_padding2">
    <div class="container">
      <div class="item_container">
        <div class="box">
          <div class="price">
            <h6>
                ADD OR EDIT
            </h6>
          </div>
          <div class="img-box">
              <asp:ImageButton ID="ImageButton1" runat="server" Height="125px" ImageUrl="~/images/images.jpeg" OnClick="ImageButton1_Click" />
&nbsp;</div>
          <div class="name">
            <h5>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CATEGORY</h5>
          </div>
        </div>
        <div class="box">
          <div class="price">
            <h6>
                ADD OR EDIT</h6>
          </div>
          <div class="img-box">
              <asp:ImageButton ID="ImageButton2" runat="server" Height="125px" ImageUrl="~/images/product.jpg" OnClick="ImageButton2_Click" />
&nbsp;</div>
          <div class="name">
            <h5>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRODUCT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h5>
          </div>
        </div>
          <div class="box">
          <div class="price">
            <h6>
                </h6>
          </div>
          <div class="img-box">
              <asp:ImageButton ID="ImageButton3" runat="server" Height="125px" ImageUrl="~/images/download.jpg" OnClick="ImageButton3_Click"  />
&nbsp;</div>
          <div class="name">
            <h5>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FEEDBACKS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h5>
          </div>
        </div>
      </div>
    </div>
  </div>
    
            
</asp:Content>


