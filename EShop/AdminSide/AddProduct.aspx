﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="EShop.AdminSide.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 276px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:510px">
            <table  style="border-collapse:collapse; width:700px;height:390px;background-color:white;">
                <tr>
                    <td><h1>Add Product</h1></td>
                    <td class="auto-style1"></td>
                </tr>
                <%-- <tr>
                    <td><h3>Product ID:</h3></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="pid" runat="server" Height="43px" Width="220px"></asp:TextBox>

                    </td>
                </tr>--%>
                <tr>
                    <td><h3>Product Name:</h3></td>
                    <td class="auto-style1">
                         <asp:TextBox ID="pname" runat="server" Height="43px" Width="220px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td><h3>Product Description:</h3></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="pdesc" runat="server" Height="43px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><h3>Product Price:</h3></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="pprice" runat="server" Height="43px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                  <td><h3>Product Category:</h3></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="pcat" runat="server" Height="43px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><h3>Product Image:</h3></td>
                    <td class="auto-style1">
                       <asp:FileUpload ID="FileUpload1" runat="server" /> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="imgBtn" runat="server" Text="ADD" Font-Bold="True" Height="55px" OnClick="imgBtn_Click" Width="116px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
