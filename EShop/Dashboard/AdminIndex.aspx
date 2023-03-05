<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="EShop.Dashboard.AdminIndex" %>

<!DOCTYPE html>
   
<html>
    <head>
        <title>EShop</title>
        <link href="/ui/css/admin.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css"/>
       <style>
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
          <img src="/Image/img.jpg" width="50px" height="40px"/><br />
           <h5 class="animate-charcter">E-Furniture</h5> 
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
      </div>
      
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
