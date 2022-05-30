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
        If manapproved.Checked = True Then
            manager_approval = "Approved"
        Else
            manager_approval = "Not Approved"
        End If

        Dim eng_mgr_approval As String = ""
        If engapproved.Checked = True Then
            eng_mgr_approval = "Approved"
        Else
            eng_mgr_approval = "Not Approved"
        End If

        Dim mat_mgr_planner_approval As String = ""
        If matapproved.Checked = True Then
            mat_mgr_planner_approval = "Approved"
        Else
            mat_mgr_planner_approval = "Not Approved"
        End If

        Dim director_approval As String = ""
        If dirapproved.Checked = True Then
            director_approval = "Approved"
        Else
            director_approval = "Not Approved"
        End If

        Dim president_director_approval As String = ""
        If preapproved.Checked = True Then
            president_director_approval = "Approved"
        Else
            president_director_approval = "Not Approved"
        End If

        Connect.Open()

        Dim WebRegistration As String = Nothing
        Dim Command As New SqlCommand("Update WebRegistration set manager_approval = '" & manager_approval & "', eng_mgr_approval = '" & eng_mgr_approval & "', mat_mgr_planner_approval = '" & mat_mgr_planner_approval & "', director_approval = '" & director_approval & "', president_director_approval = '" & president_director_approval & "' where documentid = '" & documentid & "'", Connect)
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