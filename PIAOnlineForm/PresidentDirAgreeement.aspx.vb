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

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("FullDataPresident.aspx")
    End Sub
End Class