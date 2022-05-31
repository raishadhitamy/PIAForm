Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class FormLogin
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogin_Click(sender As Object, e As EventArgs) Handles ButtonLogin.Click

        Connect.Open()

        Dim WebRegistration As String = Nothing
        Dim cmd As SqlCommand = New SqlCommand("select * from WebRegistration where Email='" & txtEmailLogin.Text & "' and Password='" & txtPasswordLogin.Text & "'", Connect)
        Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim dt As DataTable = New DataTable()
        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then
            Dim userLevel = dt.Rows(0)("UserLevel").ToString()
            userLevel = userLevel.Trim(" ")
            If (userLevel.Equals("Initiator")) Then
                Response.Redirect("MainForm.aspx")
            ElseIf (userLevel.Equals("Director")) Then
                Response.Redirect("DirectorAgreement.aspx")
            ElseIf (userLevel.Equals("Eng. Mgr")) Then
                Response.Redirect("EngManagerAgreement.aspx")
            ElseIf (userLevel.Equals("Manager")) Then
                Response.Redirect("ManagerAgreement.aspx")
            ElseIf (userLevel.Equals("President Director")) Then
                Response.Redirect("PresidentDirAgreeement.aspx")
            Else
                Response.Redirect("MatManagerAgreement.aspx")
            End If
        Else
            MsgBox("Error, login Failed!", MsgBoxStyle.Information, "Message")
        End If
        Connect.Close()
    End Sub
End Class