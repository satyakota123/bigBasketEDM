<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Products.aspx.vb" Inherits="bigBasketEDM.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 240px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Products Catalog<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="CUSTID" HeaderText="CUSTID" ReadOnly="True" SortExpression="CUSTID" />
                    <asp:BoundField DataField="MEMBERSHIPID" HeaderText="MEMBERSHIPID" SortExpression="MEMBERSHIPID" />
                    <asp:BoundField DataField="CUSTOMERSINCE" HeaderText="CUSTOMERSINCE" SortExpression="CUSTOMERSINCE" />
                    <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                    <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                    <asp:BoundField DataField="MNAME" HeaderText="MNAME" SortExpression="MNAME" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM &quot;CUSTOMERS&quot; WHERE &quot;CUSTID&quot; = ?" InsertCommand="INSERT INTO &quot;CUSTOMERS&quot; (&quot;CUSTID&quot;, &quot;MEMBERSHIPID&quot;, &quot;CUSTOMERSINCE&quot;, &quot;FNAME&quot;, &quot;LNAME&quot;, &quot;MNAME&quot;, &quot;GENDER&quot;, &quot;AGE&quot;, &quot;DOB&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMERS&quot;" UpdateCommand="UPDATE &quot;CUSTOMERS&quot; SET &quot;MEMBERSHIPID&quot; = ?, &quot;CUSTOMERSINCE&quot; = ?, &quot;FNAME&quot; = ?, &quot;LNAME&quot; = ?, &quot;MNAME&quot; = ?, &quot;GENDER&quot; = ?, &quot;AGE&quot; = ?, &quot;DOB&quot; = ? WHERE &quot;CUSTID&quot; = ?">
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
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
