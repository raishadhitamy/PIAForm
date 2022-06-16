Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class PresidentDirAgreeement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim command As New SqlCommand("select f.DocumentID, f.Part_Number, f.Quantity_Physical, f.Quantity_Book, f.Total_Value, f.Initiator_Name from frompia as f join WebRegistration as w on f.Initiator_Name = w.Name where w.KPK_PresidentDirector = (select KPK from WebRegistration where Name = '" & Session("name") & "')", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        PreDisplayDatabase.DataSource = dt
        PreDisplayDatabase.DataBind()
    End Sub

    Protected Sub PreBtnUpdate_Click(sender As Object, e As EventArgs) Handles PreBtnUpdate.Click
        Dim documentid As String = PreTextBox.Text

        Dim president_director_approval As String = ""
        If pres_approval.SelectedIndex = 0 Then
            president_director_approval = "Approved"
        ElseIf pres_approval.SelectedIndex = 1 Then
            president_director_approval = "Not Approved"
        Else
            president_director_approval = ""
        End If

        Connect.Open()

        Dim Command As New SqlCommand("Update frompia set President_Director_Approval = '" & president_director_approval & "' where DocumentID = '" & documentid & "'", Connect)
        Dim v = Command.ExecuteNonQuery()

        'MsgBox("Data updated successfully", MsgBoxStyle.Information, "Message")'

        Connect.Close()
    End Sub
    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from frompia", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        PreDisplayDatabase.DataSource = dt
        PreDisplayDatabase.DataBind()
    End Sub

    Protected Sub PreButton_Click(sender As Object, e As EventArgs) Handles PreButton.Click
        Dim documentid As Integer = PreTextBox.Text
        Dim command As New SqlCommand("select * from frompia where documentid = '" & documentid & "'", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        PreDisplayDatabase.DataSource = dt
        PreDisplayDatabase.DataBind()
    End Sub
End Class