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
            <ul>
                <%-- Shop Name --%>
                <li><a>ColdSword Shop </a></li>
                
                 <%--Displays what page you are on in the right top side of the nav bar--%>
                <li><a style="position:absolute; right:10px;">Home</a></li>
            </ul>
            <%-- Side Navigation bar --%>
            <div class="sidenav">
                <a href="Home.aspx">Home</a>
                <a href="ShopPage.aspx">Shop</a>
                <a href="#">Somthing</a>
                <a href="Login.aspx">Login</a>
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
