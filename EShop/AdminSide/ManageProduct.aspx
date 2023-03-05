<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="EShop.AdminSide.ManageAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/ui/css/admin.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
       
        <div class="main-content">
         <table class="tbl" style="margin-left:290px; ">
                <tr>
                    <th>S.N.</th>
                    <th>ProdcutName</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Featured</th>
                    <th>Active</th>
                    <th>Actions</th>
                </tr>
                <tr>
                    <td>S.N.</td>
                    <td>ProdcutName</td>
                    <td>Price</td>
                    <td>Image</td>
                    <td>Featured</td>
                    <td>Active</td>
                    <td><asp:Button runat="server" ID="AddP" Text="Add" OnClick="AddP_Click" class="btn-add"/>
                    <asp:Button runat="server" ID="updateP" Text="Update" OnClick="updateP_Click" class="btn-update"/>
                    <asp:Button runat="server" ID="deleteP" Text="Delete" OnClick="deleteP_Click" class="btn-delete"/></td>
                    
                </tr>
         
          </table>
         </div>
       
    </form>
</body>
</html>
