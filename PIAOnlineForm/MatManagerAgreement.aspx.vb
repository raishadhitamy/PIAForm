Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class MatManagerAgreement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub MatButton_Click(sender As Object, e As EventArgs) Handles MatButton.Click
        Dim documentid As Integer = MatTextBox.Text
        Dim command As New SqlCommand("select * from frompia where documentid = '" & documentid & "'", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        MatDisplayDatabase.DataSource = dt
        MatDisplayDatabase.DataBind()
    End Sub

    Protected Sub MatBtnUpdate_Click(sender As Object, e As EventArgs) Handles MatBtnUpdate.Click
        Dim documentid As String = MatTextBox.Text

        Dim mat_mgr_planner_approval As String = ""
        If mat_mgr_approval.SelectedIndex = 0 Then
            mat_mgr_planner_approval = "Approved"
        ElseIf mat_mgr_approval.SelectedIndex = 1 Then
            mat_mgr_planner_approval = "Not Approved"
        Else
            mat_mgr_planner_approval = ""
        End If

        Connect.Open()

        Dim Command As New SqlCommand("Update frompia set Mat_Mgr_Planner_Approval = '" & mat_mgr_planner_approval & "' where DocumentID = '" & documentid & "'", Connect)
        Dim v = Command.ExecuteNonQuery()

        MsgBox("Data updated successfully", MsgBoxStyle.Information, "Message")

        Connect.Close()
    End Sub

    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from frompia", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        MatDisplayDatabase.DataSource = dt
        MatDisplayDatabase.DataBind()
    End Sub

End Class