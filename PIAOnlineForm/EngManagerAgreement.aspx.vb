﻿Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class EngManagerAgreement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub EngBtnUpdate_Click(sender As Object, e As EventArgs) Handles EngBtnUpdate.Click
        Dim documentid As String = EngTextBox.Text

        Dim eng_mgr_approval As String = ""
        If eng_man_approval.SelectedIndex = 0 Then
            eng_mgr_approval = "Approved"
        ElseIf eng_man_approval.SelectedIndex = 1 Then
            eng_mgr_approval = "Not Approved"
        Else
            eng_mgr_approval = ""
        End If

        Connect.Open()

        Dim Command As New SqlCommand("Update frompia set Eng_Mgr_Approval = '" & eng_mgr_approval & "' where DocumentID = '" & documentid & "'", Connect)
        Dim v = Command.ExecuteNonQuery()

        MsgBox("Data updated successfully", MsgBoxStyle.Information, "Message")

        Connect.Close()
    End Sub

    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from frompia", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        EngDisplayDatabase.DataSource = dt
        EngDisplayDatabase.DataBind()
    End Sub

    Protected Sub EngButton_Click(sender As Object, e As EventArgs) Handles EngButton.Click
        Dim documentid As Integer = EngTextBox.Text
        Dim command As New SqlCommand("select * from frompia where documentid = '" & documentid & "'", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        EngDisplayDatabase.DataSource = dt
        EngDisplayDatabase.DataBind()
    End Sub
End Class