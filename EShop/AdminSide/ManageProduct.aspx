<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="EShop.AdminSide.ManageAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/ui/css/admin.css" rel="stylesheet" />
    <link href="../ui/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <style>
        
.add-anchord {
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
       
               <div class="">
                             

                   <asp:GridView ID="adminlist" runat="server" CssClass="table" 
                       AutoGenerateColumns="False" 
                       OnRowDeleting="adminlist_RowDeleting"
                       OnRowEditing="adminlist_RowEditing"
                       OnRowCancelingEdit ="adminlist_RowCancelingEdit"
                       OnRowUpdating="adminlist_RowUpdating"
                       DatakeyNames="ProductId" CellPadding="4" ForeColor="#333333">
                       <RowStyle HorizontalAlign="Center" />
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       
                       
                       
                       <Columns>
                         <asp:TemplateField HeaderText="Product Id">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelID" Text='<%# Eval("ProductId") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                           </asp:TemplateField>
                       
                           <asp:TemplateField HeaderText="Product Name">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelName" Text='<%# Eval("ProductName") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="pname" Text='<%# Bind("ProductName") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>
                             <asp:TemplateField HeaderText="Product Description">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelDesc" Text='<%# Eval("ProductDesc")%>'>
                                  </asp:Label>
                              </ItemTemplate>
                                   <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="desc" Text='<%# Bind("ProductDesc") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                            <asp:TemplateField HeaderText="Product Price">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelPrice" Text='<%# Eval("ProductPrice") %>'>
                                  </asp:Label>
                              </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="price" Text='<%# Bind("ProductPrice") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Product Category">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelPrice" Text='<%# Eval("ProductCategory") %>'>
                                  </asp:Label>
                              </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="pcat" Text='<%# Bind("ProductCategory") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="Product image">
                              <ItemTemplate>
                                 <asp:Image  ID="labelImg" height="100px" Width="100px" runat="server" ImageUrl='<%# Eval("ProductImage")  %>'/>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:FileUpload runat="server" height="100px" Width="100px" ID="ImageUp"  />           
                               </EditItemTemplate>
                          </asp:TemplateField>
                                
                           <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-primary">

<ControlStyle CssClass="btn btn-primary"></ControlStyle>
                           </asp:CommandField>

                           <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger">
                          
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                           </asp:CommandField>
                          
                       </Columns>
                      <%--  <EditRowStyle BackColor="#7C6F57" />
                       <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                       <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#E3EAEB" />
                       <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F8FAFA" />
                       <SortedAscendingHeaderStyle BackColor="#246B61" />
                       <SortedDescendingCellStyle BackColor="#D4DFE1" />
                       <SortedDescendingHeaderStyle BackColor="#15524A" />--%>
                   </asp:GridView>
                   <br />
                   <a href="AddProduct.aspx" class="add-anchord" style="text-decoration: none;font-weight: bold; font-size: medium; color: white;   padding: 10px 28px;
                    background-color: green;border-radius: 13px;">Add Product</a>
                   <br />
               </div>    
       
    </form>
</body>
</html>