<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ColdSwordShop.MainPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <link rel="stylesheet" href="WebshopStyle.css"/>
    <title>ColdSword's Webshop</title>
</head>
    <body>
        <form id="form1" runat="server">
             <%-- Top Navigation menu --%>
            <div class="navbar">
                <a href="Home.aspx">Home</a>
                <div class="dropdown">
                <button class="dropbtn">Login 
                    <i class="fa fa-caret-down"></i>
                </button>
                    <div class="dropdown-content">
                    <a href="Login.aspx">Login</a>
                    <a href="CreateUser.aspx">Create new User</a>
                    </div>
                </div> 
            </div>
            <%-- Side Navigation bar --%>
            <div class="sidenav">
                <a href="ShopPage.aspx">Shop</a>
                <a href="Cart.aspx">Cart</a>
            </div>
            <%-- Main Page --%>
            <div class="main">
                <a>AAAAAAAAAAAAaaaaaaaaaaaaaaaaaaa</a>
                <b>BBBBBBBBBBBbbbbbbbbbbbbbbbbbbB</b>

                
                <p>This sidenav is always shown.</p>
            </div>
        </form>
    </body>
</html>
