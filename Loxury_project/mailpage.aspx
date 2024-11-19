<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="mailpage.aspx.cs" Inherits="Loxury_project.mailpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #f4f4f4;
}

.container {
    max-width: 600px;
    margin: auto;
    padding: 20px;
    background: white;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-control {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
            <h1>Send Reply</h1>
            <div class="form-group">
                <label for="to">To:</label>
                <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="from">From:</label>
                <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="subject">Subject:</label>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button  ID="Button1" runat="server" BackColor="#FF9900" Text="SEND" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
</asp:Content>
