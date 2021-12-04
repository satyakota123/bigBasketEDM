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

            Dim dbEmail As String = ""
            Dim dbPwd As String = ""
            Console.WriteLine("outside If")
            'Dim sql1 As String = "select fname from customers where fname = '" + email + "'"
            Dim sql1 As String = "select * from customers"
            'Dim sql1 As String = "select fname from customers where custId = 'C102'"
            cmd = New OracleCommand(sql1, conn)
            cmd.CommandType = CommandType.Text
            Console.WriteLine("outside If")
            Console.WriteLine(cmd.ExecuteReader())
            If cmd.ExecuteReader() Is Nothing Then
                Console.WriteLine("User Not Found")
                MsgBox("User doesn't exist. Please signUp")
                dbEmail = ""
                Response.Redirect("signUpPage.aspx")
            Else
                reader = cmd.ExecuteReader()
                reader.Read()
                Console.WriteLine(reader.GetString(0))
                dbEmail = reader.GetString(0)
            End If

            Dim sql2 As String = "select pass from password where userid = '" + email + "'"
            cmd = New OracleCommand(sql2, conn)
            cmd.CommandType = CommandType.Text
            If cmd.ExecuteReader() Is Nothing Then
                Console.WriteLine("User Not Found")
                dbPwd = ""
            Else
                reader = cmd.ExecuteReader()
                reader.Read()
                dbPwd = reader.GetString(0)
            End If

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
            Console.WriteLine(ex)
        Finally
            MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Console.WriteLine("outside If")

        Dim oradb As String = "TNS_ADMIN=C:\Users\satya\Oracle\network\admin;USER ID=MIS531GROUP14;PASSWORD=UI@8-tGQe;DATA SOURCE=128.196.27.219:1521/ORCL;PERSIST SECURITY INFO=True"
        Dim conn As New OracleConnection(oradb)


        Dim cmd As New OracleCommand()
        Dim reader As OracleDataReader
        conn.Open()
        cmd.Connection = conn

        Try
            'Dim sql1 As String = "select * from customers"
            Dim sql1 As String = "select fname from customers where custId = 'C'"
            cmd = New OracleCommand(sql1, conn)
            cmd.CommandType = CommandType.Text
            If cmd.ExecuteReader() Is Nothing Then
                MsgBox("Nothing")
            End If
            reader = cmd.ExecuteReader()
            reader.Read()
            MsgBox(reader.GetString(0))
            'Response.Redirect("WebForm1.aspx")

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
        Finally
            MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub
End Class