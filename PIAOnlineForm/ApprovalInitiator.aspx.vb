Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class ApprovalInitiator
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim command As New SqlCommand("select f.DocumentID, f.Plant, f.Source, f.Quantity_Physical, f.Quantity_Book, f.Total_Value, f.Initiator_Name from frompia as f join WebRegistration as w on f.Initiator_Name = w.Name where w.KPK = (select KPK from WebRegistration where Name = '" & Session("name") & "')", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        If Not Page.IsPostBack Then
            DisplayDatabase.DataSource = dt
            DisplayDatabase.DataBind()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("MainPage.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("MainForm.aspx")
    End Sub

    Protected Sub InButton_Click(sender As Object, e As EventArgs) Handles InButton.Click
        Dim DocumentID As String = InTextBox.Text
        Dim Part_Number As String = InTextBox.Text
        Dim Plant As String = InTextBox.Text
        Dim Source As String = InTextBox.Text
        Dim command As New SqlCommand()
        If (cmbInitiator.SelectedValue = "Document ID") Then
            command = New SqlCommand("select * from frompia where DocumentID = '" & DocumentID & "'", Connect)
        ElseIf (cmbInitiator.SelectedValue = "Part Number") Then
            command = New SqlCommand("select * from frompia where Part_Number = '" & Part_Number & "'", Connect)
        ElseIf (cmbInitiator.SelectedValue = "Plant") Then
            command = New SqlCommand("select * from frompia where Plant = '" & Plant & "'", Connect)
        ElseIf (cmbInitiator.SelectedValue = "Source") Then
            command = New SqlCommand("select * from frompia where Source = '" & Source & "'", Connect)
        End If
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        DisplayDatabase.DataSource = dt
        DisplayDatabase.DataBind()
    End Sub
End Class