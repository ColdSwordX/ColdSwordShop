<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ColdSwordShop.MainPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <link rel="stylesheet" href="WebshopStyle.css"/>
    <title>ColdSword's Webshop</title>
</head>
    <body>
        <form id="form1" runat="server">
             <%-- Navigation menu --%>
            <div class="topnav">
                <a class="active" href="MainPage.aspx">Home</a>
                <a href="MainPage.aspx">Logout</a>
                <a href="MainPage.aspx">User Info</a>
                <a style="position:absolute; right:160px;" id ="CreateNew" runat="server" visible="false" href="MainPage.aspx">Create User</a>
                <a style="position:absolute; right:280px;" id ="Delete" runat="server" visible="false" href="MainPage.aspx">Delete User</a>
            </div>
        </form>
    </body>
</html>
