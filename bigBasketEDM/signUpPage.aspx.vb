Imports Oracle.ManagedDataAccess.Client
Imports System.Data.OleDb
Imports System.Windows.Forms
Imports System.Data.SqlClient

Public Class signUpPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles lName.TextChanged

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gender.SelectedIndexChanged

    End Sub

    Protected Sub createUser(sender As Object, e As EventArgs) Handles signUp.Click
        Dim oradb As String = "TNS_ADMIN=C:\Users\satya\Oracle\network\admin;USER ID=MIS531GROUP14;PASSWORD=UI@8-tGQe;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
        Dim conn As New OracleConnection(oradb)


        Dim cmd As New OracleCommand()
        Dim reader As OracleDataReader
        conn.Open()
        cmd.Connection = conn
        Try
            Dim firstName As String = fName.Text
            Dim lastName As String = lName.Text
            Dim middleName As String = mName.Text
            Dim custGender As String = gender.Text
            Dim custAge As String = age.Text
            Dim dateOfBirth As String = dob.Text
            Randomize()
            Dim randomValue As Integer = CInt(Int((999 * Rnd())) + 100)
            'cmd.CommandText = "insert into test values ('test1')"
            cmd.CommandText = "Insert into customers values ('C" + randomValue.ToString() + "', 'M001', '02-Jan-2020'," + "'" + firstName + "'," + "'" + lastName + "'," + "'" + middleName + "'," + "'" + custGender + "'," + "'" + custAge + "'," + "'" + dateOfBirth + "'" + ")"
            cmd.CommandType = CommandType.Text

            cmd.ExecuteNonQuery()


            conn.Close()
            MsgBox("You are being redirected to LogIn Page")
            Response.Redirect("WebForm1.aspx")

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
        Finally
            MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub

End Class