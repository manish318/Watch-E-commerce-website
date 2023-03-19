<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientIndex.aspx.cs" Inherits="EShop.Dashboard.ClientIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/someUniqueId.js"></script>
    <style>
        .btn {
            cursor: pointer;
            border: 1px solid #3498db;
            background-color: transparent;
            height: 50px;
            width: 200px;
            color: #3498db;
            font-size: 1.5em;
            box-shadow: 0 6px 6px rgba(0, 0, 0, 0.6);
        }
    </style>

</head>
<body>
   <form id="Form1" runat="server">
   <header class="text-gray-600 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center" style="border-bottom: 2px solid black;">
    <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
       <img src="/Image/watch1.png" width="50px" height="70px"/>
      <span class="ml-3 text-xl">Watches</span>
    </a>
    <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
        <b> <a href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Home</a></b>
        <b> <a href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Product</a></b>
        <b> <a href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Categories</a></b>
        <b><a href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"class="mr-5 hover:text-gray-900">About Us</a></b>
        
    </nav>
        <b><a href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;" class="mr-5 hover:text-gray-900"><img src="/Image/cart.png" width="30px" height="30px" "/>Cart</a></b>
    <button id="btnLout" class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-200 rounded text-base mt-4 md:mt-0" ><a href="/LoginPage/Client_login.aspx">Logout</a>
      <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
        <path d="M5 12h14M12 5l7 7-7 7"></path>
      </svg>
    </button>
  </div>
</header>
       <section class="text-gray-600 body-font">
  <div class="container px-5 py-24 mx-auto flex flex-wrap">
    <div class="flex flex-wrap -mx-4 mt-auto mb-auto lg:w-1/2 sm:w-2/3 content-start sm:pr-10">
      <div class="w-full sm:p-4 px-4 mb-6">
        <b><h1 class="title-font font-medium text-xl mb-2 text-gray-900">WATCHES</h1></b>
        <div class="leading-relaxed">Every man dreams of having at least one awesome watch that can reflect their personality. that can show their Time. The watch can show their personality and suited to all people. As you see the name of the website. maybe you guess the services that we provide.</div>
      </div>
    </div>
    <div class="lg:w-1/2 sm:w-1/3 w-full rounded-lg overflow-hidden mt-6 sm:mt-0">
     <img  class="object-cover object-center w-full h-full" src="../Image/Titoni-Seascoper-300-Chronometer-Dive-Watch-Hands-on-Review-1.jpg" alt="stats"/>
    </div>
  </div>
</section>
       <br />
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" Height="400px" Width="1250px" RepeatColumns="4" RepeatDirection="Horizontal" style="border:1px solid white;margin-left:auto;margin-right:auto;">
        <ItemTemplate>
            <table>
                   <tr>
                       <td style="text-align:center;background-color:aliceblue">
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" Font-Names="Times New Roman" ForeColor="Black"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">
                           <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="343px" Width="476px" ImageUrl='<%# Eval("ProductImage") %>' />
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">
                           <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="Black" style=" text-align:center"></asp:Label>
                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductPrice") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" style=" text-align:center"></asp:Label>

                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">Quantity
                           <asp:DropDownList ID="DropDownList1" runat="server">

                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>

                           </asp:DropDownList>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align:center">
                           <%-- <b><a class="mr-5 hover:text-gray-900" href="#" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
                           <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/Image/AddToCart.jpg" Width="200px" CommandArgument='<%# Eval("ProductId") %>'  CommandName="AddToCart"/> 
                           </a></b>--%>
                           <asp:Button ID="cartButton1" runat="server" Text="Add To Cart"  class="btn" Onclick="cartButton1_Click" CommandArgument='<%# Eval("ProductId") %>'/>
                           
                       </td>
                   </tr>

                   
               </table>
               <br/>
            </br/   >
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E_FurnitureConnectionString %>" SelectCommand="SELECT [ProductName], [ProductPrice], [ProductImage], [ProductId] FROM [Product]"></asp:SqlDataSource>


       

<footer class="p-4 bg-white rounded-lg shadow md:flex md:items-center md:justify-between md:p-6 dark:bg-gray-800" style="border-top:1px solid black;">
    <span class="text-sm text-gray-900 sm:text-center dark:text-gray-900">© 2023 NCCS. All Rights Reserved.
    </span>
    <ul class="flex flex-wrap items-center mt-3 text-sm text-gray-900 dark:text-gray-900 sm:mt-0">
        <li>
            <a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
        </li>
        <li>
            <a href="#" class="mr-4 hover:underline md:mr-6">Privacy Policy</a>
        </li>
        <li>
            <a href="#" class="mr-4 hover:underline md:mr-6">Licensing</a>
        </li>
        <li>
            <a href="#" class="hover:underline">Contact</a>
        </li>
    </ul>
</footer>


    </form>
</body>
</html>

