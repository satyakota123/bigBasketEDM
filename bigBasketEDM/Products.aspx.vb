﻿Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim selectValue As String = DropDownList1.Text
        If selectValue = "PL" Then
            GridView2.Visible = False
            GridView1.Visible = True
        ElseIf selectValue = "HPM" Then
            GridView1.Visible = False
            GridView2.Visible = True
        Else
            MsgBox("Select and Option")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Dashboard.aspx")
    End Sub
End Class