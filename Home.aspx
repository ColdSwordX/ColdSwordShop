<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ColdSwordShop.MainPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <link rel="stylesheet" href="WebshopStyle.css"/>
    <title>ColdSword's Webshop</title>
</head>
    <body>
        <form id="form1" runat="server">
             <%-- Navigation menu --%>
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Home.aspx">News</a></li>
                <li class="dropdown">
                    <a href="Home.aspx" class="dropbtn">Dropdown</a>
                    <div class="dropdown-content">
                        <a href="Home.aspx">Link 1</a>
                        <a href="Home.aspx">Link 2</a>
                        <a href="Home.aspx">Link 3</a>
                    </div>
                </li>
                 <%-- Displays what page you are on in the right top side of the nav bar --%>
                <li><a style="position:absolute; right:0;">Home</a></li>
            </ul>

        </form>
    </body>
</html>
