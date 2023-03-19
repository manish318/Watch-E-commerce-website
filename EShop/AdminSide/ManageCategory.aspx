<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="EShop.AdminSide.ManageCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="../ui/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   
        
</head>
<body>
    <form id="form1" runat="server">
       
               <div class="">
              <asp:GridView ID="adminlist" runat="server" CssClass="table" 
                       AutoGenerateColumns="False" 
                       OnRowDeleting="adminlist_RowDeleting"
                       OnRowEditing="adminlist_RowEditing"
                       OnRowCancelingEdit="adminlist_RowCancelingEdit"
                       OnRowUpdating="adminlist_RowUpdating"
                       DatakeyNames="rowId"
                       BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" >
                        <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       
                       <Columns>
                         <asp:TemplateField HeaderText="Id">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelID" Text='<%# Eval("rowId") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                           </asp:TemplateField>
                       
                           <asp:TemplateField HeaderText="CategoryName">
                              <ItemTemplate>
                                  <asp:Label runat="server" Id="labelName" Text='<%# Eval("Title") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="cname" Text='<%# Bind("Title") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                           <asp:TemplateField HeaderText="image">
                              <ItemTemplate>
                                 <asp:Image  ID="labelImg" height="100px" Width="100px" runat="server" ImageUrl='<%# Eval("Image")  %>'/>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:FileUpload runat="server" height="100px" Width="100px" ID="ImageUp"  />           
                               </EditItemTemplate>
                          </asp:TemplateField>
                                                      

                               <asp:TemplateField HeaderText="IsActive">
                              <ItemTemplate>
                                  <asp:Label runat="server"  Id="labelActive" Text='<%# Eval("isActive")%>'>
                                  </asp:Label>
                              </ItemTemplate>
                                   <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="isactive" Text='<%# Bind("isActive") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                              <asp:TemplateField HeaderText="IsDelete">
                              <ItemTemplate>
                                  <asp:Label runat="server"  Id="labelDel" Text='<%# Eval("IsDeleted")%>'>
                                  </asp:Label>
                              </ItemTemplate>
                                  <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="isdel" Text='<%# Bind("IsDeleted") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                     
                           <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-primary">

                            <ControlStyle CssClass="btn btn-primary"></ControlStyle>
                           </asp:CommandField>

                           <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger">
                          
                            <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                           </asp:CommandField>
                          
                       </Columns>
                       
                   </asp:GridView>
                     <br />
                   <a href="AddCategory.aspx" class="add-anchord" style="text-decoration: none;font-weight: bold; font-size: medium; color: white;   padding: 10px 28px;
                    background-color: green;border-radius: 13px;">Add Category</a>
                   <br />
               </div>    
       
    </form>
</body>
</html>
