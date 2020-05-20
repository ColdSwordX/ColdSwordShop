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
        <%--Main page--%>
        <div class="main">
            <%-- Left side of the shop --%>
            <a>
            <asp:Label ID="Label1" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox1" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image1" runat="server" /><br />
            <asp:Label ID="Label2" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox2" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image2" runat="server" /><br />
            <asp:Label ID="Label3" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox3" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image3" runat="server" /><br />
            <asp:Label ID="Label4" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox4" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image4" runat="server" /><br />
            <asp:Label ID="Label11" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox5" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image5" runat="server" /><br />
            <asp:Label ID="Label10" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox6" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image6" runat="server" /><br />
            </a>
            <%-- Right side of the shop --%>
            <b>
            <asp:Label ID="Label5" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox7" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image7" runat="server" /><br />
            <asp:Label ID="Label6" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox8" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image8" runat="server" /><br />
            <asp:Label ID="Label7" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox9" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image9" runat="server" /><br />
            <asp:Label ID="Label8" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox10" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image10" runat="server" /><br />
            <asp:Label ID="Label9" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox11" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image11" runat="server" /><br />
            <asp:Label ID="Label12" Width="500px" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox12" Height="100px" Width="500px" runat="server">something else</asp:TextBox>
                <asp:Image ID="Image12" runat="server" /><br />
            </b>
            <nav>
                <asp:DropDownList ID="DropDownList1" width="33%" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" width="33%" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" width="33%" runat="server"></asp:DropDownList>
            </nav>
        </div>
    </form>
</body>
