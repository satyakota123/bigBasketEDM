<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="bigBasketEDM.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="BBlogo" class="auto-style1" src="bb_logo.png" /></div>
        <div>
        <div style="background-color: orangered;">
            <p style="position: relative; left: 40rem; color: white;font-size: 30px;">ADMIN CONSOLE</p>
        </div>
            <div>
                <asp:Button ID="Button2" Class="buttonStyle individualButton homeButton" runat="server" Text="Home" />
            </div>
        <div>
        <br />
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="tabelName" class="dropDownStyle" runat="server" DataSourceID="SqlDataSource1" DataTextField="TABLE_NAME" DataValueField="TABLE_NAME">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" Class="buttonStyle individualButton" runat="server" Text="Go" />
                    </td>
                   
                </tr>
                <tr>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="select table_name from user_tables order by table_name"></asp:SqlDataSource>      
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                      <asp:CommandField ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#0066cc" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>