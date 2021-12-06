<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="bigBasketEDM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 133px;
            height: 56px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <div>
            <img alt="BBlogo" class="auto-style1" src="bb_logo.png" /></div>

        <div>

              <div style="background-color: orangered;">
            <p style="position: relative; left: 40rem; color: white;font-size: 30px;">LOGIN</p>
        </div>
            <div style="text-align:center">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            Welcome to BigBasket!! Please login to move forward<br />
            <br />
            <br />
                Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="custEmail" runat="server"></asp:TextBox>
            <br />
            <br />
           Password:&nbsp;
            <asp:TextBox ID="custPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="loginButton" class="buttonStyle"  runat="server" style="margin-left: 0px" Text="Login" Width="130px" />
            <br />
            <br />
            Don&#39;t have an account yet? Please
            <a href="signUpPage.aspx">
                        Sign Up Now</a>
        </div>
</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="select * from customers"></asp:SqlDataSource>
    </form>
</body>
</html>
