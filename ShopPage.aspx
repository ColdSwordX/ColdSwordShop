<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopPage.aspx.cs" Inherits="ColdSwordShop.ShopPage" %>

<!DOCTYPE html>

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
                    <a href="Login.aspx">Login</a>
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
        <%--Main page--%>
        <div class="main" id="ShopMain" runat="server">
            
            <nav>
                <asp:DropDownList ID="CostList"  width="33%" runat="server">
                    <asp:ListItem>ALL</asp:ListItem>
                    <asp:ListItem>0-100</asp:ListItem>
                    <asp:ListItem>0-500</asp:ListItem>
                    <asp:ListItem>0-1000</asp:ListItem>
                    <asp:ListItem>1000+</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="CatagoryList" width="33%" runat="server"></asp:DropDownList>
                <asp:Button runat="server" OnClick="ShearchButton" Text="Find me stuff" />
            </nav>
            <%-- Left side of the shop --%>
            <div class="floatleft textcolor">

            </div>
            <%-- Right side of the shop --%>
            <div class="textcolor">

            </div> 
        </div>
    </form>
</body>
