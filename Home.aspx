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
                <b>ColdSword's Shop</b>
                <div class="dropdown">
                <button id="UserLoginName" runat="server" class="dropbtn">Login 
                    <i class="fa fa-caret-down"></i>
                </button>
                    <div class="dropdown-content">
                    <a id="UserLogin" href="Login.aspx">Login</a>
                    <a href="CreateUser.aspx">Create new User</a>
                    </div>
                </div> 
            </div>
            <%-- Side Navigation bar --%>
            <div class="sidenav">
                <a href="Home.aspx">Home</a>
                <a href="ShopPage.aspx">Shop</a>
                <a id="cart" href="Cart.aspx">Cart</a>
            </div>
            <%-- Main Page --%>
            <div class="main">
                <a>Home Page</a>
            </div>
        </form>
    </body>
</html>
