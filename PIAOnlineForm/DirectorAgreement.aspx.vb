Imports System.Data.SqlClient
Public Class DirectorAgreement
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim command As New SqlCommand("select f.DocumentID, f.Plant, f.Source, f.Quantity_Physical, f.Quantity_Book, f.Total_Value, f.Initiator_Name from frompia as f join WebRegistration as w on f.Initiator_Name = w.Name where w.KPK_Director = (select KPK from WebRegistration where Name = '" & Session("name") & "') and Approval = (select Name from WebRegistration where KPK = any (select KPK_MatMgr from WebRegistration where Name = any (select Name from WebRegistration where KPK_Director = any (Select KPK from WebRegistration where Name = '" & Session("name") & "'))))", Connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        If Not Page.IsPostBack Then
            DirDisplayDatabase.DataSource = dt
            DirDisplayDatabase.DataBind()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("FullDataDirector.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("MainPage.aspx")
    End Sub

    Protected Sub DirBtnUpdate_Click(sender As Object, e As EventArgs) Handles DirBtnUpdate.Click
        Connect.Open()
        For Each row As GridViewRow In DirDisplayDatabase.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim chk As HtmlInputCheckBox = DirectCast(row.FindControl("chkchild"), HtmlInputCheckBox)
                If dir_approval.SelectedIndex = 0 Then
                    If chk.Checked Then
                        Dim Command As New SqlCommand("Update frompia set Approval = '" & Session("name") & "' where DocumentID = '" & row.Cells(1).Text & "'", Connect)
                        Command.ExecuteNonQuery()
                    End If
                Else
                    If chk.Checked Then
                        Dim Command As New SqlCommand("Update frompia set Approval = 'Not Approved' where DocumentID = '" & row.Cells(1).Text & "'", Connect)
                        Command.ExecuteNonQuery()
                    End If
                End If
            End If
        Next
        Connect.Close()
    End Sub

End Class