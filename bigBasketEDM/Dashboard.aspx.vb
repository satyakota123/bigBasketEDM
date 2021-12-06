Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub productsButton_Click(sender As Object, e As EventArgs) Handles productsButton.Click
        Response.Redirect("Products.aspx")
    End Sub

    Protected Sub customerButton_Click(sender As Object, e As EventArgs) Handles customerButton.Click
        Response.Redirect("Customers.aspx")
    End Sub

    Protected Sub reportsButton_Click(sender As Object, e As EventArgs) Handles reportsButton.Click
        Response.Redirect("Reports.aspx")
    End Sub

    Protected Sub adminButton_Click(sender As Object, e As EventArgs) Handles adminButton.Click
        Response.Redirect("Admin.aspx")
    End Sub

    Protected Sub inventoryButton_Click(sender As Object, e As EventArgs) Handles inventoryButton.Click
        Response.Redirect("Employee.aspx")
    End Sub

End Class