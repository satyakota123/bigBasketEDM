<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="bigBasketEDM.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Connection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MEMBERSHIPID" DataSourceID="oracleEdmTest">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MEMBERSHIPID" HeaderText="MEMBERSHIPID" ReadOnly="True" SortExpression="MEMBERSHIPID" />
                    <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                    <asp:BoundField DataField="VALIDTO" HeaderText="VALIDTO" SortExpression="VALIDTO" />
                    <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
                    <asp:BoundField DataField="DISCOUNTS" HeaderText="DISCOUNTS" SortExpression="DISCOUNTS" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="oracleEdmTest" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM MIS531GROUP14.MEMBERSHIP WHERE (MEMBERSHIPID = MEMBERSHIPID)" InsertCommand="INSERT INTO &quot;MEMBERSHIP&quot; (&quot;MEMBERSHIPID&quot;, &quot;TYPE&quot;, &quot;VALIDTO&quot;, &quot;COST&quot;, &quot;DISCOUNTS&quot;) VALUES (:MEMBERSHIPID, :TYPE, :VALIDTO, :COST, :DISCOUNT)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;MEMBERSHIP&quot;" UpdateCommand="UPDATE &quot;MEMBERSHIP&quot; SET &quot;TYPE&quot; = :TYPE, &quot;VALIDTO&quot; = :VALIDTO, &quot;COST&quot; = :COST, &quot;DISCOUNTS&quot; = :DISCOUNT WHERE &quot;MEMBERSHIPID&quot; = :MEMBERSHIPID">
            <DeleteParameters>
                <asp:Parameter Name="MEMBERSHIPID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MEMBERSHIPID" Type="String" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="VALIDTO" Type="DateTime" />
                <asp:Parameter Name="COST" Type="Decimal" />
                <asp:Parameter Name="DISCOUNTS" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="VALIDTO" Type="DateTime" />
                <asp:Parameter Name="COST" Type="Decimal" />
                <asp:Parameter Name="DISCOUNTS" Type="Decimal" />
                <asp:Parameter Name="MEMBERSHIPID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </p>
    </form>
</body>
</html>
