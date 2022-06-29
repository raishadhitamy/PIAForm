Imports System.Data.SqlClient

Public Class ProcceedForm
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As New DataTable
        dt.Columns.AddRange(New DataColumn(14) {New DataColumn("Area"), New DataColumn("Document ID"), New DataColumn("Part Number"), New DataColumn("Source"), New DataColumn("Plant"), New DataColumn("Quantity Physical"), New DataColumn("Quantity Book"), New DataColumn("Variance"), New DataColumn("Cover Until"), New DataColumn("Unit Price"), New DataColumn("Reason Code"), New DataColumn("WC"), New DataColumn("Remarks"), New DataColumn("Total Value"), New DataColumn("Initiator")})
        For i As Integer = 0 To Int32.Parse(Session("Numbers")) - 1
            Dim datarow = Session("Datas").ToString().Split(";")(i)
            dt.Rows.Add(datarow.Split(",")(0), datarow.Split(",")(1), datarow.Split(",")(2), datarow.Split(",")(3), datarow.Split(",")(4), datarow.Split(",")(5), datarow.Split(",")(6), datarow.Split(",")(7), datarow.Split(",")(8), datarow.Split(",")(9), datarow.Split(",")(10), datarow.Split(",")(11), datarow.Split(",")(12), datarow.Split(",")(13), Session("name"))
        Next
        DisplayDatabase.DataSource = dt
        DisplayDatabase.DataBind()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("MainPage.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Connect.Open()
        For i As Integer = 0 To Int32.Parse(Session("Numbers")) - 1
            Dim datarow = Session("Datas").ToString().Split(";")(i)
            Dim Command As New SqlCommand("Insert into frompia (Area, DocumentID, Part_Number, Source, Plant, Quantity_Physical, Quantity_Book, Variance, Cover_Until, Unit_Price, Reason_Code, WC, Remarks, Total_Value, Initiator_Name) values ('" & datarow.Split(",")(0) & "', '" & datarow.Split(",")(1) & "', '" & datarow.Split(",")(2) & "', '" & datarow.Split(",")(3) & "', '" & datarow.Split(",")(4) & "', '" & datarow.Split(",")(5) & "', '" & datarow.Split(",")(6) & "', '" & datarow.Split(",")(7) & "', '" & datarow.Split(",")(8) & "', '" & datarow.Split(",")(9) & "', '" & datarow.Split(",")(10) & "', '" & datarow.Split(",")(11) & "', '" & datarow.Split(",")(12) & "', '" & datarow.Split(",")(13) & "', '" & Session("name") & "')", Connect)
            Command.ExecuteNonQuery()
        Next
        DisplayDatabase.DataSource = New DataTable()
        DisplayDatabase.DataBind()
        Session("Datas") = ""
        Session("Numbers") = 0
        Connect.Close()
    End Sub
End Class