Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class FormRegistration
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim KPK As String = txtKPK.Text
        Dim Name As String = txtName.Text
        Dim Email As String = txtEmail.Text
        Dim Password As String = txtPassword.Text
        Dim UserLevel As String = DropDownList1.SelectedValue
        Dim KPK_Manager As String = txtManager.Text
        Dim KPK_EngMgr As String = txtEngMgr.Text
        Dim KPK_MatMgr As String = txtMatMgr.Text
        Dim KPK_Director As String = txtDirector.Text
        Dim KPK_PresidentDirector As String = txtPresidentDirector.Text

        Connect.Open()

        Dim WebRegistration As String = Nothing
        Dim Command As New SqlCommand("Insert into WebRegistration values ('" & KPK & "', '" & Name & "', '" & Email & "', '" & Password & "', '" & UserLevel & "', '" & KPK_Manager & "', '" & KPK_EngMgr & "', '" & KPK_MatMgr & "', '" & KPK_Director & "', '" & KPK_PresidentDirector & "')", Connect)
        Dim v = Command.ExecuteNonQuery()

        Connect.Close()
    End Sub

    Protected Sub ButtonLogin_Click(sender As Object, e As EventArgs) Handles ButtonLogin.Click
        Response.Redirect("FormLogin.aspx")
    End Sub
End Class