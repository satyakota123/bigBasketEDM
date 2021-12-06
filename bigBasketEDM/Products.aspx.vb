Imports Oracle.ManagedDataAccess.Client

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim selectValue As String = DropDownList1.Text
        If selectValue = "PL" Then
            GridView2.Visible = False
            GridView3.Visible = False
            GridView1.Visible = True
        ElseIf selectValue = "HPM" Then
            GridView1.Visible = False
            GridView3.Visible = False
            GridView2.Visible = True
        Else
            MsgBox("Select and Option")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Dashboard.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        GridView2.Visible = False
        GridView1.Visible = False
        Dim tableValue As String = DropDownList2.Text
        Dim oradb As String = "TNS_ADMIN=C:\Users\satya\Oracle\network\admin;USER ID=MIS531GROUP14;PASSWORD=UI@8-tGQe;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
        Dim conn As New OracleConnection(oradb)

        Dim cmd As New OracleCommand()

        conn.Open()
        cmd.Connection = conn

        Try
            'GridView1.Visible = False
            Dim selectQuery As String = "Select * from V_Products_Inventory_List where pname = '" + tableValue + "'"
            cmd.CommandText = selectQuery
            cmd.CommandType = CommandType.Text

            GridView3.DataSource = cmd.ExecuteReader()
            GridView3.DataBind()
            GridView3.Visible = True
            conn.Close()
        Catch ex As Exception When ex.Message <> "Thread was being aborted."
        Finally
            'MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub
End Class