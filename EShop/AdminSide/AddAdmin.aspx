﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="EShop.AdminSide.AddAdmin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../ui/css/InsertForm.css" rel="stylesheet" />
    <style>
   .add-anchord1 {
    text-decoration: none;
    font-weight: bold;
    font-size: medium;
    color: white;
    padding: 10px 28px;
    background-color: green;
    border-radius: 13px;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
 <ul class="form-style-1">
    <li>
        <label>Username<span class="required">*</span></label>
        <asp:TextBox runat="server" ID="uname" class="field-divided" placeholder="Username"></asp:TextBox>
        <br />
        <br />

        <label>Address<span class="required">*</span></label>
         <asp:TextBox runat="server" ID="address" class="field-divided" placeholder="Address"></asp:TextBox>
        <br />
        <br />
        
        <label>IsActive<span class="required">*</span></label>
         <asp:DropDownList ID="IsActive" runat="server"  class="field-divided">
                   <asp:ListItem Value="Y">Yes</asp:ListItem>
                   <asp:ListItem Value="N">No</asp:ListItem>
               </asp:DropDownList>
        <br />
        <br />


         <label>Password<span class="required">*</span></label>
            <asp:TextBox runat="server" ID="password1" textmode="Password" class="field-divided" placeholder="Enter Password"></asp:TextBox>
        <br />
    </li>
   
    <li>
        <asp:Button runat="server" ID="AddA" Text="Insert" class="add-anchord1" OnClick="AddA_Click"/>
    </li>
</ul>

     </form>
</body>
</html>
