Public Class Reports
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub homeButton_Click(sender As Object, e As EventArgs) Handles homeButton.Click
        Response.Redirect("Dashboard.aspx")
    End Sub
End Class