<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="EShop.Dashboard.AdminIndex" %>

<!DOCTYPE html>
   
<html>
    <head>
        <title>Watches</title>
        <link href="/ui/css/admin.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css"/>

        <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/someUniqueId.js"></script>

</head>
<body>
    <form>
   <header class="text-gray-600 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center" style="border-bottom: 2px solid black;">
    <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
       <img src="/Image/watch1.png" width="50px" height="50px"/>
      <span class="ml-3 text-xl"><b>Watches</b></span>
    </a>
    <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
        <b> <a href="/AdminSide/ManageAdmin.aspx" target="frame" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Admin</a></b>
        <%-- %><b> <a href="/AdminSide/AddProduct.aspx" target="frame" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Add Product</a></b>--%>
                <b> <a href="/AdminSide/ManageProduct.aspx" target="frame" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Products</a></b>

        <b> <a href="../AdminSide/ManageCategory.aspx" target="frame" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" class="mr-5 hover:text-gray-900">Categories</a></b>
        <b><a href="#" target="frame" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"class="mr-5 hover:text-gray-900">Orders</a></b>
        <b><a href="/LoginPage/admin_login.aspx" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"class="mr-5 hover:text-gray-900">Logout</a></b>        
    </nav>
  </div>
</header>



       <%-- <style>
           .animate-charcter
            {
           text-transform: uppercase;
           background-image: linear-gradient(
           -225deg,
           #231557 0%,
            #44107a 29%,
           #ff1361 67%,
            #fff800 100%
                );
          background-size: auto auto;
          background-clip: border-box;
          background-size: 200% auto;
          color: #fff;
           background-clip: text;
          text-fill-color: transparent;
         -webkit-background-clip: text;
         -webkit-text-fill-color: transparent;
          animation: textclip 2s linear infinite;
          display: inline-block;
          font-size: 40px;
          }
           </style>
    </head>
    <body>
        <form>
      <!-- Menu section starts here -->
          
               
      <div class="menu text-center">
          <img src="/Image/watch1.png" width="65px" height="65px"/><br />
           <h5 class="animate-charcter">Watch Shop</h5> 
        <div class="menu-wrapper"> 
               
            
            <hr />
            <br />
           <ul>
               
               <li><a href="/AdminSide/ManageAdmin.aspx"  target="frame">Admin</a></li>
               <li><a href="#"  target="frame">Category</a></li>
               <li ><a href="/AdminSide/ManageProduct.aspx"  target="frame">Product</a></li>
               <li><a href="#" target="frame">Order</a></li>
               <li><a href="/LoginPage/admin_login.aspx">LogOut</a></li>
                
           </ul>
        </div>
      </div>--%>
      
   <div class="content">
    <iframe width="100%" height="600px" style="border:0px solid;" name="frame"></iframe>
     </div>
    
    <div class="footer">
      <div class="footer-wrapper">
            <p class="text-center">Thank you for visiting our website!</p>
        </div>
      </div>

  </form>
 </body>
</html>
