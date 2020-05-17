<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="ColdSwordShop.CreateUser" %>

<!DOCTYPE html>

<head runat="server">
    <title>ColdSword's Webshop</title>
         <link rel="stylesheet" href="WebshopStyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <ul>
            <%-- Shop Name --%>
            <li><a>ColdSword Shop </a></li>
                
            <%--Displays what page you are on in the right top side of the nav bar--%>
            <li><a style="position:absolute; right:10px; ">Login</a></li>
            </ul>
            <%-- Side Navigation bar --%>
            <div class="sidenav">
                <a href="Home.aspx">Home</a>
                <a href="ShopPage.aspx">Shop</a>
                <a href="#">Somthing</a>
                <a href="Login.aspx">Login</a>
            </div>
            <div class="centerCreateField">
                <label>Create User</label><br /><br />
                <Label ID="CUserNameLabel" runat="server">User Name:</Label>
                <input runat="server" type="text" id="CreateUserName" name="CreateUserName"/><br /><br />
                <Label ID="CPasswordLabel" runat="server">Password:</Label>
                <input runat="server" type="text" id="CreatePassword" name="CreatePassword"/><br /><br />
                <Label ID="CFirstNameLabel" runat="server">First Name</Label>
                <input runat="server" type="text" id="CreateFName" name="CreateFName"/><br /><br />
                <Label ID="CLastNameLabel" runat="server">Last Name:</Label>
                <input runat="server" type="text" id="CreateLName" name="CreateLName"/><br /><br />
                <Label ID="CEmailLabel" runat="server">Email Adress:</Label>
                <input runat="server" type="text" id="CreateEmail" name="CreateEmail"/><br /><br />
                <Label ID="CPhoneLabel" runat="server">Phone Nymber:</Label>
                <input runat="server" type="text" id="CreatePhone" name="CreatePhone"/><br /><br />
                <Label ID="CPostalCodeLabel" runat="server">PostalCode:</Label>
                <input runat="server" type="text" id="CreatePostalCode" name="CreatePostalCode"/><br /><br />
                <Label ID="CCityLabel" runat="server">City:</Label>
                <input runat="server" type="text" id="CreateCity" name="CreateCity"/><br /><br />
                <Label ID="CStreetNameLabel" runat="server">Street Name:</Label>
                <input runat="server" type="text" id="CreateStreet" name="CreateStreet"/><br /><br />
                <Label ID="CStreetNumberLabel" runat="server">Street Number:</Label>
                <input runat="server" type="text" id="CreateStreetNR" name="CreateStreetNR"/><br /><br />
                <asp:Button ID="CreateUserButton" runat="server" Text="Create" OnClick="NewUserButton" />
            </div>
    </form>
</body>
