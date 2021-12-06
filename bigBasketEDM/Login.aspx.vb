Imports Oracle.ManagedDataAccess.Client
Imports System.Data.OleDb
Imports System.Windows.Forms
Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click
        Console.WriteLine("outside If")

        Dim oradb As String = "TNS_ADMIN=C:\Users\satya\Oracle\network\admin;USER ID=MIS531GROUP14;PASSWORD=UI@8-tGQe;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
        Dim conn As New OracleConnection(oradb)


        Dim cmd As New OracleCommand()
        Dim reader As OracleDataReader
        conn.Open()
        cmd.Connection = conn

        Try
            Dim email As String = custEmail.Text
            Dim password As String = custPass.Text

            Dim dbUsername As String = ""
            Dim dbPwd As String = ""

            Dim userNameQuery As String = "select user_name from employees where user_name = '" + email + "'"
            'Dim userNameQuery As String = "select user_name from employees where emp_id = 15"
            cmd = New OracleCommand(userNameQuery, conn)
            cmd.CommandType = CommandType.Text
            reader = cmd.ExecuteReader()
            reader.Read()
            dbUsername = reader.GetString(0)

            Dim sql2 As String = "select password from employees where user_name = '" + email + "'"
            'Dim sql2 As String = "select password from employees where user_name = 'satya'"
            cmd = New OracleCommand(sql2, conn)
            cmd.CommandType = CommandType.Text
            reader = cmd.ExecuteReader()
            reader.Read()
            dbPwd = reader.GetString(0)

            conn.Close()
            If dbUsername = email And dbPwd = password Then
                MsgBox("User Login Successful")
                Response.Redirect("Dashboard.aspx")
            Else
                MsgBox("User not Found")
                Response.Redirect("Login.aspx")
            End If

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            Console.WriteLine(ex)
        Finally
            'MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub

End Class