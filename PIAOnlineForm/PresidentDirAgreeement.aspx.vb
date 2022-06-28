﻿Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class PresidentDirAgreeement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim command As New SqlCommand("select f.DocumentID, f.Part_Number, f.Quantity_Physical, f.Quantity_Book, f.Total_Value, f.Initiator_Name from frompia as f join WebRegistration as w on f.Initiator_Name = w.Name where w.KPK_PresidentDirector = (select KPK from WebRegistration where Name = '" & Session("name") & "') and Approval = (select Name from WebRegistration where KPK = any (select KPK_Director from WebRegistration where Name = any (select Name from WebRegistration where KPK_PresidentDirector = any (Select KPK from WebRegistration where Name = '" & Session("name") & "'))))", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        If Not Page.IsPostBack Then
            PreDisplayDatabase.DataSource = dt
            PreDisplayDatabase.DataBind()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("FullDataPresident.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("MainPage.aspx")
    End Sub

    Protected Sub PreBtnUpdate_Click(sender As Object, e As EventArgs) Handles PreBtnUpdate.Click
        Connect.Open()
        For Each row As GridViewRow In PreDisplayDatabase.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim chk As HtmlInputCheckBox = DirectCast(row.FindControl("chkchild"), HtmlInputCheckBox)
                If pres_approval.SelectedIndex = 0 Then
                    If chk.Checked Then
                        Dim Command As New SqlCommand("Update frompia set Approval = '" & Session("name") & "' where DocumentID = '" & row.Cells(1).Text & "' and Part_Number = '" & row.Cells(2).Text & "'", Connect)
                        Command.ExecuteNonQuery()
                    End If
                Else
                    If chk.Checked Then
                        Dim Command As New SqlCommand("Update frompia set Approval = 'Not Approved' where DocumentID = '" & row.Cells(1).Text & "' and Part_Number = '" & row.Cells(2).Text & "'", Connect)
                        Command.ExecuteNonQuery()
                    End If
                End If
            End If
        Next
        Connect.Close()
    End Sub
End Class