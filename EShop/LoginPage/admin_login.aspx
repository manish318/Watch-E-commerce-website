﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="EShop.LoginPage.admin_Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            justify-content:center;
             align-items: center;
            height: 70%;
        }
        form {
            border: 3px solid #f1f1f1;
            
        }
        h2{
            text-align:center;
        }
        


        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: forestgreen;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 30px ;
            justify-content: center;
            align-items: center;
           
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: 150px auto;
            width: 30%;

        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="frmalg">
       
        <div class="container">
                <h2>Admin Login </h2>
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="uName" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="pwd" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Sigin" OnClick="btn_Login_Click" />
        </div>
           
    </form>
</body>
</html>



