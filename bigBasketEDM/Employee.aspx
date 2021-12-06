<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Employee.aspx.vb" Inherits="bigBasketEDM.Employee" %>

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
            <p style="position: relative; left: 40rem; color: white;font-size: 30px;">EMPLOYEES</p>
        </div>
            <br />
        <div>
            <div>
                 <asp:Button ID="Button2" Class="buttonStyle individualButton homeButton" runat="server" Text="Home" />
            </div>
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" class="dropDownStyle" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="H">Hierarchy</asp:ListItem>
                        <asp:ListItem Value="E">Employees</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" Class="buttonStyle individualButton" runat="server" Text="Go" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="EMPLOYEE" HeaderText="EMPLOYEE" SortExpression="EMPLOYEE" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="MANAGER" HeaderText="MANAGER" SortExpression="MANAGER" />
                    <asp:BoundField DataField="CHART" HeaderText="CHART" SortExpression="CHART" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;MANAGER_HIERARCHY&quot;"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource2" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
                    <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                    <asp:BoundField DataField="MNAME" HeaderText="MNAME" SortExpression="MNAME" />
                    <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="MGRID" HeaderText="MGRID" SortExpression="MGRID" />
                    <asp:BoundField DataField="DEPTNO" HeaderText="DEPTNO" SortExpression="DEPTNO" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" SortExpression="USER_NAME" />
                    <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="slateblue" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bigBasketEdmConnection %>" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMP_ID&quot; = ?" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMP_ID&quot;, &quot;FNAME&quot;, &quot;MNAME&quot;, &quot;LNAME&quot;, &quot;DOB&quot;, &quot;MGRID&quot;, &quot;DEPTNO&quot;, &quot;GENDER&quot;, &quot;USER_NAME&quot;, &quot;PASSWORD&quot;) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:bigBasketEdmConnection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;FNAME&quot; = ?, &quot;MNAME&quot; = ?, &quot;LNAME&quot; = ?, &quot;DOB&quot; = ?, &quot;MGRID&quot; = ?, &quot;DEPTNO&quot; = ?, &quot;GENDER&quot; = ?, &quot;USER_NAME&quot; = ?, &quot;PASSWORD&quot; = ? WHERE &quot;EMP_ID&quot; = ?">
                <DeleteParameters>
                    <asp:Parameter Name="EMP_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EMP_ID" Type="Decimal" />
                    <asp:Parameter Name="FNAME" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="LNAME" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="MGRID" Type="Decimal" />
                    <asp:Parameter Name="DEPTNO" Type="Decimal" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="USER_NAME" Type="String" />
                    <asp:Parameter Name="PASSWORD" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FNAME" Type="String" />
                    <asp:Parameter Name="MNAME" Type="String" />
                    <asp:Parameter Name="LNAME" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="MGRID" Type="Decimal" />
                    <asp:Parameter Name="DEPTNO" Type="Decimal" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="USER_NAME" Type="String" />
                    <asp:Parameter Name="PASSWORD" Type="String" />
                    <asp:Parameter Name="EMP_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
