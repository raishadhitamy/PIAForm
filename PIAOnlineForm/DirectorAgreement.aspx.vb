Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class DirectorAgreement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DirBtnUpdate_Click(sender As Object, e As EventArgs) Handles DirBtnUpdate.Click
        Dim documentid As String = DirTextBox.Text

        Dim director_approval As String = ""
        If dir_approval.SelectedIndex = 0 Then
            director_approval = "Approved"
        ElseIf dir_approval.SelectedIndex = 1 Then
            director_approval = "Not Approved"
        Else
            director_approval = ""
        End If

        Connect.Open()

        Dim Command As New SqlCommand("Update frompia set Director_Approval = '" & director_approval & "' where DocumentID = '" & documentid & "'", Connect)
        Dim v = Command.ExecuteNonQuery()

        'MsgBox("Data updated successfully", MsgBoxStyle.Information, "Message")'

        Connect.Close()
    End Sub
    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from frompia", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        DirDisplayDatabase.DataSource = dt
        DirDisplayDatabase.DataBind()
    End Sub

    Protected Sub DirButton_Click(sender As Object, e As EventArgs) Handles DirButton.Click
        Dim documentid As Integer = DirTextBox.Text
        Dim command As New SqlCommand("select * from frompia where documentid = '" & documentid & "'", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        DirDisplayDatabase.DataSource = dt
        DirDisplayDatabase.DataBind()
    End Sub
End Class