Imports Oracle.ManagedDataAccess.Client
Imports System.Data.OleDb
Imports System.Windows.Forms
Imports System.Data.SqlClient

Public Class signUpPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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
            Dim deptNum As String = deptNo.Text
            Dim dateOfBirth As String = dob.Text
            Dim username As String = custUserName.Text
            Dim password As String = custPassword.Text

            Dim sql1 As String = "Select max(emp_id) from employees"
            Dim cmdMax As New OracleCommand
            cmdMax = New OracleCommand(sql1, conn)
            cmdMax.CommandType = CommandType.Text
            reader = cmdMax.ExecuteReader()
            reader.Read()
            Dim maxValue As Integer = reader.GetInt32(0)

            Dim emp_id As Integer = maxValue + 1

            'MsgBox(maxValue)
            'Dim maxValue As String = 16
            'Dim depNo As String = 1
            Randomize()
            Dim randomValue As Integer = CInt(Int((999 * Rnd())) + 100)
            'cmd.CommandText = "Insert into employees values (" + maxValue + ", '" + firstName + "'," + "'" + middleName + "'," + "'" + lastName + "'," + "'" + dateOfBirth + "'," + depNo + "'" + deptNum + "'," + "'" + custGender + "', " + "'" + username + "'," + "'" + password + "'" + ")"
            cmd.CommandText = "Insert into employees values (" + emp_id.ToString() + ", '" + firstName + "', '" + middleName + "', '" + lastName + "', '" + dateOfBirth + "', 1," + deptNum + ", '" + custGender + "', '" + username + "', '" + password + "' )"
            cmd.CommandType = CommandType.Text

            cmd.ExecuteNonQuery()


            conn.Close()
            MsgBox("You are being redirected to LogIn Page")
            Response.Redirect("Dashboard.aspx")

        Catch ex As Exception When ex.Message <> "Thread was being aborted."
        Finally
            'MsgBox("error")
            cmd.Dispose()
        End Try
    End Sub

End Class