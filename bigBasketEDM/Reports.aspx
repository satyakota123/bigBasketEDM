<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reports.aspx.vb" Inherits="bigBasketEDM.Customers" %>

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
            <p style="position: relative; left: 40rem; color: white;font-size: 30px;">REPORTS</p>
        </div>
        <div>
            <div>
                <asp:Button ID="homeButton" Class="buttonStyle individualButton homeButton" runat="server" Text="Home" />
            </div>
        <table>
            <tr>
                <td><asp:DropDownList ID="DropDownList1" class="dropDownStyle" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Products</asp:ListItem>
                <asp:ListItem>Inventory</asp:ListItem>
                </asp:DropDownList></td>
                <td>
                    <asp:Button ID="reportButton" Class="buttonStyle individualButton" runat="server" Text="Get Reports" />
                </td>
            </tr>
        </table>
            <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="MON_YEAR" HeaderText="MON_YEAR" SortExpression="MON_YEAR" />
                    <asp:BoundField DataField="PTYPE_NAME" HeaderText="PTYPE_NAME" SortExpression="PTYPE_NAME" />
                    <asp:BoundField DataField="PNAME" HeaderText="PNAME" SortExpression="PNAME" />
                    <asp:BoundField DataField="MONTHLY_COUNT" HeaderText="MONTHLY_COUNT" SortExpression="MONTHLY_COUNT" />
                    <asp:BoundField DataField="TOTAL_PRODUCT_ORDER" HeaderText="TOTAL_PRODUCT_ORDER" SortExpression="TOTAL_PRODUCT_ORDER" />
                    <asp:BoundField DataField="TOTAL_MONTHLY_AMOUNT" HeaderText="TOTAL_MONTHLY_AMOUNT" SortExpression="TOTAL_MONTHLY_AMOUNT" />
                    <asp:BoundField DataField="TOTAL_AMOUNT" HeaderText="TOTAL_AMOUNT" SortExpression="TOTAL_AMOUNT" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT &quot;NAME&quot;, &quot;MON_YEAR&quot;, &quot;PTYPE_NAME&quot;, &quot;PNAME&quot;, &quot;MONTHLY_COUNT&quot;, &quot;TOTAL_PRODUCT_ORDER&quot;, &quot;TOTAL_MONTHLY_AMOUNT&quot;, &quot;TOTAL_AMOUNT&quot; FROM &quot;V_CUST_MONTHLY_COMPARISON&quot;">
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MEMBERSHIP_ID" DataSourceID="SqlDataSource2" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="MEMBERSHIP_ID" HeaderText="MEMBERSHIP_ID" ReadOnly="True" SortExpression="MEMBERSHIP_ID" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="VALIDTO" HeaderText="VALIDTO" SortExpression="VALIDTO" />
                <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
                <asp:BoundField DataField="DISCOUNTS" HeaderText="DISCOUNTS" SortExpression="DISCOUNTS" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM &quot;MEMBERSHIP&quot; WHERE &quot;MEMBERSHIP_ID&quot; = ?" InsertCommand="INSERT INTO &quot;MEMBERSHIP&quot; (&quot;MEMBERSHIP_ID&quot;, &quot;TYPE&quot;, &quot;VALIDTO&quot;, &quot;COST&quot;, &quot;DISCOUNTS&quot;, &quot;NAME&quot;) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;MEMBERSHIP&quot;" UpdateCommand="UPDATE &quot;MEMBERSHIP&quot; SET &quot;TYPE&quot; = ?, &quot;VALIDTO&quot; = ?, &quot;COST&quot; = ?, &quot;DISCOUNTS&quot; = ?, &quot;NAME&quot; = ? WHERE &quot;MEMBERSHIP_ID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="MEMBERSHIP_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MEMBERSHIP_ID" Type="Decimal" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="VALIDTO" Type="DateTime" />
                <asp:Parameter Name="COST" Type="Decimal" />
                <asp:Parameter Name="DISCOUNTS" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="VALIDTO" Type="DateTime" />
                <asp:Parameter Name="COST" Type="Decimal" />
                <asp:Parameter Name="DISCOUNTS" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="MEMBERSHIP_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Visible="False" DataKeyNames="EMP_ID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" ReadOnly="True" />
                <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                <asp:BoundField DataField="MNAME" HeaderText="MNAME" SortExpression="MNAME" />
                <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="MGRID" HeaderText="MGRID" SortExpression="MGRID" />
                <asp:BoundField DataField="DEPTNO" HeaderText="DEPTNO" SortExpression="DEPTNO" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource4" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY_ID" ReadOnly="True" SortExpression="DELIVERY_ID" />
                <asp:BoundField DataField="DELIVERY_DATE" HeaderText="DELIVERY_DATE" SortExpression="DELIVERY_DATE" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="TRIP_ID" HeaderText="TRIP_ID" SortExpression="TRIP_ID" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM &quot;DELIVERY&quot; WHERE &quot;DELIVERY_ID&quot; = ?" InsertCommand="INSERT INTO &quot;DELIVERY&quot; (&quot;DELIVERY_ID&quot;, &quot;DELIVERY_DATE&quot;, &quot;TYPE&quot;, &quot;TRIP_ID&quot;) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;DELIVERY&quot;" UpdateCommand="UPDATE &quot;DELIVERY&quot; SET &quot;DELIVERY_DATE&quot; = ?, &quot;TYPE&quot; = ?, &quot;TRIP_ID&quot; = ? WHERE &quot;DELIVERY_ID&quot; = ?">
            <DeleteParameters>
                <asp:Parameter Name="DELIVERY_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DELIVERY_ID" Type="Decimal" />
                <asp:Parameter Name="DELIVERY_DATE" Type="DateTime" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="TRIP_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DELIVERY_DATE" Type="DateTime" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="TRIP_ID" Type="Decimal" />
                <asp:Parameter Name="DELIVERY_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
