Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class AgreementForm
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnUpdate_Click(sender As Object, e As EventArgs) Handles BtnUpdate.Click
        Dim documentid As String = TextBox1.Text

        Dim manager_approval As String = ""
        If man_approval.SelectedIndex = 0 Then
            manager_approval = "Approved"
        ElseIf man_approval.SelectedIndex = 1 Then
            manager_approval = "Not Approved"
        Else
            manager_approval = ""
        End If

        Dim eng_mgr_approval As String = ""
        If eng_man_approval.SelectedIndex = 0 Then
            eng_mgr_approval = "Approved"
        ElseIf eng_man_approval.SelectedIndex = 1 Then
            eng_mgr_approval = "Not Approved"
        Else
            eng_mgr_approval = ""
        End If

        Dim mat_mgr_planner_approval As String = ""
        If mat_mgr_approval.SelectedIndex = 0 Then
            mat_mgr_planner_approval = "Approved"
        ElseIf mat_mgr_approval.SelectedIndex = 1 Then
            mat_mgr_planner_approval = "Not Approved"
        Else
            mat_mgr_planner_approval = ""
        End If

        Dim director_approval As String = ""
        If dir_approval.SelectedIndex = 0 Then
            director_approval = "Approved"
        ElseIf dir_approval.SelectedIndex = 1 Then
            director_approval = "Not Approved"
        Else
            director_approval = ""
        End If

        Dim president_director_approval As String = ""
        If pres_approval.SelectedIndex = 0 Then
            president_director_approval = "Approved"
        ElseIf pres_approval.SelectedIndex = 1 Then
            president_director_approval = "Not Approved"
        Else
            president_director_approval = ""
        End If

        Connect.Open()

        Dim Command As New SqlCommand("Update frompia set Manager_Approval = '" & manager_approval & "', Eng_Mgr_Approval = '" & eng_mgr_approval & "', Mat_Mgr_Planner_Approval = '" & mat_mgr_planner_approval & "', Director_Approval = '" & director_approval & "', President_Director_Approval = '" & president_director_approval & "' where DocumentID = '" & documentid & "'", Connect)
        Dim v = Command.ExecuteNonQuery()

        MsgBox("Data updated successfully", MsgBoxStyle.Information, "Message")

        Connect.Close()
    End Sub

    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from frompia", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        DisplayDatabase.DataSource = dt
        DisplayDatabase.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim documentid As Integer = TextBox1.Text
        Dim command As New SqlCommand("select * from frompia where documentid = '" & documentid & "'", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        DisplayDatabase.DataSource = dt
        DisplayDatabase.DataBind()
    End Sub
End Class