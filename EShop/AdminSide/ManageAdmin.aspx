<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAdmin.aspx.cs" Inherits="EShop.AdminSide.ManageAdmin1" %>

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
       
               <div class=""><%--col-lg-8 col-md-offset-2--%>

                  

                   <asp:GridView ID="adminlist" runat="server" CssClass="table" 
                       OnRowDeleting="adminlist_RowDeleting"
                       OnRowEditing="adminlist_RowEditing"
                       OnRowCancelingEdit = "adminlist_RowCancelingEdit"
                       OnRowUpdating ="adminlist_RowUpdating"
                       DataKeyNames="rowId"
                       AutoGenerateColumns="false"
                        ForeColor="#333333">
            <RowStyle HorizontalAlign="Center" />
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       
                       <Columns>
                           <asp:BoundField HeaderText="ID" Datafield="rowID"/>
                       



                           <asp:TemplateField HeaderText="Username">
                              <ItemTemplate>
                                  <asp:Label runat="server" Text='<%# Eval("userName") %>'>
                                  </asp:Label>
                              </ItemTemplate> 
                               <EditItemTemplate>
                                   <asp:TextBox runat="server"  id="uname" Text='<%# Bind("userName") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>


                            <asp:TemplateField HeaderText="Password">
                              <ItemTemplate>
                                  <asp:Label runat="server" Text='<%# Eval("pwd") %>'>
                                  </asp:Label>
                              </ItemTemplate>
                               <EditItemTemplate>
                                   <asp:TextBox runat="server" id="pass"  Text='<%# Bind("pwd") %>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                                  
                                                        
                               <asp:TemplateField HeaderText="Address">
                              <ItemTemplate>
                                  <asp:Label runat="server" Text='<%# Eval("address")%>'>
                                  </asp:Label>
                              </ItemTemplate>
                               <EditItemTemplate>
                                   <asp:TextBox runat="server" id="address" Text='<%# Bind("address")%>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                            <asp:BoundField HeaderText="CreatedDate" Datafield="createdDate"/>

                               <asp:TemplateField HeaderText="IsActive">
                              <ItemTemplate>
                                  <asp:Label runat="server" Text='<%# Eval("isActive")%>'>
                                  </asp:Label>
                              </ItemTemplate>
                               <EditItemTemplate>
                                   <asp:TextBox runat="server" id="IsActive" Text='<%# Bind("isActive")%>'>
                                  </asp:TextBox>
                               </EditItemTemplate>
                           </asp:TemplateField>

                           <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger"/>
                           <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-primary"/>
                       </Columns>
                   </asp:GridView>
                    
                   <br />
                   <a href="AddAdmin.aspx" class="add-anchord">Add Admin</a>
                   <br />
                   
               </div>    
       
    </form>
</body>
</html>
