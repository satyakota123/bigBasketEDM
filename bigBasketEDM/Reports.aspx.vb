Public Class Customers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
    Protected Sub reportButton_Click(sender As Object, e As EventArgs) Handles reportButton.Click
        Dim selectValue As String = DropDownList1.Text
        If selectValue = "Customer" Then
            GridView2.Visible = False
            GridView3.Visible = False
            GridView4.Visible = False
            GridView1.Visible = True
        ElseIf selectValue = "Finance" Then
            GridView1.Visible = False
            GridView3.Visible = False
            GridView4.Visible = False
            GridView2.Visible = True
        ElseIf selectValue = "Inventory" Then
            GridView1.Visible = False
            GridView2.Visible = False
            GridView4.Visible = False
            GridView3.Visible = True
        ElseIf selectValue = "Products" Then
            GridView1.Visible = False
            GridView2.Visible = False
            GridView3.Visible = False
            GridView4.Visible = True
        Else
            MsgBox("Select and Option")
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles homeButton.Click
        Response.Redirect("Dashboard.aspx")
    End Sub
End Class