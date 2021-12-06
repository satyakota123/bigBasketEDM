Imports Oracle.ManagedDataAccess.Client

Public Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim tableValue As String = tabelName.Text
        Dim oradb As String = "TNS_ADMIN=C:\Users\satya\Oracle\network\admin;USER ID=MIS531GROUP14;PASSWORD=UI@8-tGQe;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
        Dim conn As New OracleConnection(oradb)

        Dim cmd As New OracleCommand()

        conn.Open()
        cmd.Connection = conn

        Try
            'GridView1.Visible = False
            Dim selectQuery As String = "Select * from " + tableValue
            cmd.CommandText = selectQuery '"Select * from cards"
            cmd.CommandType = CommandType.Text

            GridView1.DataSource = cmd.ExecuteReader()
            GridView1.DataBind()
            GridView1.Visible = True
            conn.Close()
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
        Finally
            MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Dashboard.aspx")
    End Sub
End Class