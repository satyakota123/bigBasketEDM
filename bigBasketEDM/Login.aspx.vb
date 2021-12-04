Imports Oracle.ManagedDataAccess.Client

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles loginButton.Click
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

            Dim sql1 As String = "select custId from customers where email = '" + email + "'"
            cmd = New OracleCommand(sql1, conn)
            cmd.CommandType = CommandType.Text
            If cmd.ExecuteReader() Is Nothing Then
                Console.WriteLine("User Not Found")
                MsgBox("User doesn't exist. Please signUp")
                dbEmail = ""
                Response.Redirect("signUpPage.aspx")
            Else
                reader = cmd.ExecuteReader()
                reader.Read()
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
        Finally
            MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub
End Class