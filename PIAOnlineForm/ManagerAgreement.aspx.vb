Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class ManagerAgreement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ManagerBtnUpdate_Click(sender As Object, e As EventArgs) Handles ManagerBtnUpdate.Click
        Dim documentid As String = ManagerTextBox.Text

        Dim manager_approval As String = ""
        If man_approval.SelectedIndex = 0 Then
            manager_approval = "Approved"
        ElseIf man_approval.SelectedIndex = 1 Then
            manager_approval = "Not Approved"
        Else
            manager_approval = ""
        End If

        Connect.Open()

        Dim Command As New SqlCommand("Update frompia set Manager_Approval = '" & manager_approval & "' where DocumentID = '" & documentid & "'", Connect)
        Dim v = Command.ExecuteNonQuery()

        MsgBox("Data updated successfully", MsgBoxStyle.Information, "Message")

        Connect.Close()
    End Sub

    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from frompia", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        ManagerDisplayDatabase.DataSource = dt
        ManagerDisplayDatabase.DataBind()
    End Sub

    Protected Sub ManagerButton_Click(sender As Object, e As EventArgs) Handles ManagerButton.Click
        Dim documentid As Integer = ManagerTextBox.Text
        Dim command As New SqlCommand("select * from frompia where documentid = '" & documentid & "'", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        ManagerDisplayDatabase.DataSource = dt
        ManagerDisplayDatabase.DataBind()
    End Sub

End Class