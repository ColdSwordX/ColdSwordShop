<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ColdSwordShop.Login" %>

<!DOCTYPE html>

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
                <li><a style="position:absolute; right:0;">Login</a></li>
            </ul>
            <%-- Side Navigation bar --%>
            <div class="sidenav">
                <a href="Home.aspx">Home</a>
                <a href="#">Services</a>
                <a href="#">Clients</a>
                <a href="Login.aspx">Login</a>
            </div>
            <%-- Main Page --%>
            <div class="main">
                 <%-- Login Page --%>
                 <div class="centerLoginField">
                     <%-- Wrights to the screen with the class's prefixes. --%>
                     <h1 class="largerFont">Login System</h1>
                     <%-- Wrights on a label with the text and the detales from the class. --%>
                     <label style="color: red;" for="labUser">Username:</label><br/>
                     <%-- Makes a text field where the user can enter his or hers username. --%>
                     <input runat="server" type="text" id="username" name="username"/><br/>
                     <%-- Wrights on a label with the text and the detales from the class. --%>
                     <label style="color:red;" for="labPass">Password:</label><br/>
                     <%-- Makes a text field where the user can enter the passweord for the given user. --%>
                     <input runat="server" type="password" id="password" name="password"/><br/><br/>
                     <%-- Creates the button that is used to submit the information and trigger the OnClick method. --%>
                     <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="Clicked"></asp:Button>
                     <asp:Button ID="CreateButton" runat="server" Text="Create User" OnClick="CreateUserButton" /><br />
                     <%-- Display information if the username or the password were wrong. --%>
                     <label runat="server" id="errorfield"> Incorect Username or Password</label><br/> 
                 </div>
            </div>
     </form>
</body>
