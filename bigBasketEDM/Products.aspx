<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Products.aspx.vb" Inherits="bigBasketEDM.WebForm2" %>

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
            <p style="position: relative; left: 40rem; color: white;font-size: 30px;">PRODUCTS CATALOG</p>
        </div>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="PL">Product List</asp:ListItem>
                <asp:ListItem Value="HPM">High Selling Product Monthly</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Go" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Home" />
            <br />
            <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Visible="False">
                <Columns>
                    <asp:BoundField DataField="PID" HeaderText="PID" ReadOnly="True" SortExpression="PID" />
                    <asp:BoundField DataField="PNAME" HeaderText="PNAME" SortExpression="PNAME" />
                    <asp:BoundField DataField="MANUFACURING_DATE" HeaderText="MANUFACURING_DATE" SortExpression="MANUFACURING_DATE" />
                    <asp:BoundField DataField="EXPIRY_DATE" HeaderText="EXPIRY_DATE" SortExpression="EXPIRY_DATE" />
                    <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="PRODUCT_PRICE" SortExpression="PRODUCT_PRICE" />
                    <asp:BoundField DataField="OFFER_ID" HeaderText="OFFER_ID" SortExpression="OFFER_ID" />
                    <asp:BoundField DataField="PTYPE_ID" HeaderText="PTYPE_ID" SortExpression="PTYPE_ID" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM &quot;PRODUCTS&quot; WHERE &quot;PID&quot; = ?" InsertCommand="INSERT INTO &quot;PRODUCTS&quot; (&quot;PID&quot;, &quot;PNAME&quot;, &quot;MANUFACURING_DATE&quot;, &quot;EXPIRY_DATE&quot;, &quot;PRODUCT_PRICE&quot;, &quot;OFFER_ID&quot;, &quot;PTYPE_ID&quot;) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;PRODUCTS&quot;" UpdateCommand="UPDATE &quot;PRODUCTS&quot; SET &quot;PNAME&quot; = ?, &quot;MANUFACURING_DATE&quot; = ?, &quot;EXPIRY_DATE&quot; = ?, &quot;PRODUCT_PRICE&quot; = ?, &quot;OFFER_ID&quot; = ?, &quot;PTYPE_ID&quot; = ? WHERE &quot;PID&quot; = ?">
                <DeleteParameters>
                    <asp:Parameter Name="PID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PID" Type="Decimal" />
                    <asp:Parameter Name="PNAME" Type="String" />
                    <asp:Parameter Name="MANUFACURING_DATE" Type="DateTime" />
                    <asp:Parameter Name="EXPIRY_DATE" Type="DateTime" />
                    <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
                    <asp:Parameter Name="OFFER_ID" Type="Decimal" />
                    <asp:Parameter Name="PTYPE_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PNAME" Type="String" />
                    <asp:Parameter Name="MANUFACURING_DATE" Type="DateTime" />
                    <asp:Parameter Name="EXPIRY_DATE" Type="DateTime" />
                    <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
                    <asp:Parameter Name="OFFER_ID" Type="Decimal" />
                    <asp:Parameter Name="PTYPE_ID" Type="Decimal" />
                    <asp:Parameter Name="PID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Visible="False">
                <Columns>
                    <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" SortExpression="CUST_ID" />
                    <asp:BoundField DataField="ORDER_ID" HeaderText="ORDER_ID" SortExpression="ORDER_ID" />
                    <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY_ID" SortExpression="DELIVERY_ID" />
                    <asp:BoundField DataField="EXPECTED_DATE" HeaderText="EXPECTED_DATE" SortExpression="EXPECTED_DATE" />
                    <asp:BoundField DataField="DATE_REACHED" HeaderText="DATE_REACHED" SortExpression="DATE_REACHED" />
                    <asp:BoundField DataField="DELIVERY_DELTA" HeaderText="DELIVERY_DELTA" SortExpression="DELIVERY_DELTA" />
                    <asp:BoundField DataField="AVG_DELTA" HeaderText="AVG_DELTA" SortExpression="AVG_DELTA" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_CUST_ORDER_DELTA&quot;"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
