<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Customers.aspx.vb" Inherits="bigBasketEDM.Reports" %>

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
            <p style="position: relative; left: 40rem; color: white;font-size: 30px;">CUSTOMER REPORTS</p>
        </div>
        <asp:Button ID="homeButton" Class="buttonStyle individualButton homeButton" runat="server" Text="Home" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CUST_ID" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" SortExpression="CUST_ID" ReadOnly="True" />
                    <asp:BoundField DataField="CUSTOMER_SINCE" HeaderText="CUSTOMER_SINCE" SortExpression="CUSTOMER_SINCE" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                    <asp:BoundField DataField="MNAME" HeaderText="MNAME" SortExpression="MNAME" />
                    <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
                    <asp:BoundField DataField="REFERID" HeaderText="REFERID" SortExpression="REFERID" />
                    <asp:BoundField DataField="DISCOUNTS" HeaderText="DISCOUNTS" SortExpression="DISCOUNTS" />
                    <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" SortExpression="USER_NAME" />
                    <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUST_ID&quot; = ?" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUST_ID&quot;, &quot;CUSTOMER_SINCE&quot;, &quot;GENDER&quot;, &quot;FNAME&quot;, &quot;MNAME&quot;, &quot;LNAME&quot;, &quot;DOB&quot;, &quot;EMAILID&quot;, &quot;REFERID&quot;, &quot;DISCOUNTS&quot;, &quot;USER_NAME&quot;, &quot;PASSWORD&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;CUSTOMER_SINCE&quot; = ?, &quot;GENDER&quot; = ?, &quot;FNAME&quot; = ?, &quot;MNAME&quot; = ?, &quot;LNAME&quot; = ?, &quot;DOB&quot; = ?, &quot;EMAILID&quot; = ?, &quot;REFERID&quot; = ?, &quot;DISCOUNTS&quot; = ?, &quot;USER_NAME&quot; = ?, &quot;PASSWORD&quot; = ? WHERE &quot;CUST_ID&quot; = ?">
                <DeleteParameters>
                    <asp:Parameter Name="CUST_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CUST_ID" Type="Decimal" />
                    <asp:Parameter Name="CUSTOMER_SINCE" Type="DateTime" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="FNAME" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="LNAME" Type="String" />
                    <asp:Parameter Name="DOB" Type="String" />
                    <asp:Parameter Name="EMAILID" Type="String" />
                    <asp:Parameter Name="REFERID" Type="Decimal" />
                    <asp:Parameter Name="DISCOUNTS" Type="Decimal" />
                    <asp:Parameter Name="USER_NAME" Type="String" />
                    <asp:Parameter Name="PASSWORD" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CUSTOMER_SINCE" Type="DateTime" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="FNAME" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="LNAME" Type="String" />
                    <asp:Parameter Name="DOB" Type="String" />
                    <asp:Parameter Name="EMAILID" Type="String" />
                    <asp:Parameter Name="REFERID" Type="Decimal" />
                    <asp:Parameter Name="DISCOUNTS" Type="Decimal" />
                    <asp:Parameter Name="USER_NAME" Type="String" />
                    <asp:Parameter Name="PASSWORD" Type="String" />
                    <asp:Parameter Name="CUST_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
