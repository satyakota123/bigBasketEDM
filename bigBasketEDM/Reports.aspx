<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reports.aspx.vb" Inherits="bigBasketEDM.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="homeButton" runat="server" Text="Home" />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Products</asp:ListItem>
                <asp:ListItem>Inventory</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="reportButton" runat="server" Text="Get Reports" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUST_ID" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="CUST_ID" HeaderText="CUST_ID" ReadOnly="True" SortExpression="CUST_ID" />
                    <asp:BoundField DataField="CUSTOMER_SINCE" HeaderText="CUSTOMER_SINCE" SortExpression="CUSTOMER_SINCE" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                    <asp:BoundField DataField="MNAME" HeaderText="MNAME" SortExpression="MNAME" />
                    <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
                    <asp:BoundField DataField="REFERID" HeaderText="REFERID" SortExpression="REFERID" />
                    <asp:BoundField DataField="DISCOUNTS" HeaderText="DISCOUNTS" SortExpression="DISCOUNTS" />
                    <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" SortExpression="ADDRESS_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM &quot;CUSTOMERS&quot; WHERE &quot;CUSTID&quot; = ?" InsertCommand="INSERT INTO &quot;CUSTOMERS&quot; (&quot;CUSTID&quot;, &quot;MEMBERSHIPID&quot;, &quot;CUSTOMERSINCE&quot;, &quot;FNAME&quot;, &quot;LNAME&quot;, &quot;MNAME&quot;, &quot;GENDER&quot;, &quot;AGE&quot;, &quot;DOB&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" UpdateCommand="UPDATE &quot;CUSTOMERS&quot; SET &quot;MEMBERSHIPID&quot; = ?, &quot;CUSTOMERSINCE&quot; = ?, &quot;FNAME&quot; = ?, &quot;LNAME&quot; = ?, &quot;MNAME&quot; = ?, &quot;GENDER&quot; = ?, &quot;AGE&quot; = ?, &quot;DOB&quot; = ? WHERE &quot;CUSTID&quot; = ?">
                <DeleteParameters>
                    <asp:Parameter Name="CUSTID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CUSTID" Type="String" />
                    <asp:Parameter Name="MEMBERSHIPID" Type="String" />
                    <asp:Parameter Name="CUSTOMERSINCE" Type="DateTime" />
                    <asp:Parameter Name="FNAME" Type="String" />
                    <asp:Parameter Name="LNAME" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="AGE" Type="Decimal" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MEMBERSHIPID" Type="String" />
                    <asp:Parameter Name="CUSTOMERSINCE" Type="DateTime" />
                    <asp:Parameter Name="FNAME" Type="String" />
                    <asp:Parameter Name="LNAME" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="AGE" Type="Decimal" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="CUSTID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MEMBERSHIP_ID" DataSourceID="SqlDataSource2" Visible="False">
            <Columns>
                <asp:BoundField DataField="MEMBERSHIP_ID" HeaderText="MEMBERSHIP_ID" ReadOnly="True" SortExpression="MEMBERSHIP_ID" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="VALIDTO" HeaderText="VALIDTO" SortExpression="VALIDTO" />
                <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
                <asp:BoundField DataField="DISCOUNTS" HeaderText="DISCOUNTS" SortExpression="DISCOUNTS" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            </Columns>
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
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Visible="False" DataKeyNames="EMP_ID">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="DELIVERY_ID" DataSourceID="SqlDataSource4" Visible="False">
            <Columns>
                <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY_ID" ReadOnly="True" SortExpression="DELIVERY_ID" />
                <asp:BoundField DataField="DELIVERY_DATE" HeaderText="DELIVERY_DATE" SortExpression="DELIVERY_DATE" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="TRIP_ID" HeaderText="TRIP_ID" SortExpression="TRIP_ID" />
            </Columns>
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
