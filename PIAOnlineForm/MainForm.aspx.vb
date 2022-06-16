Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class MainForm
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim dt As New DataTable()
            dt.Columns.AddRange(New DataColumn(4) {New DataColumn("Part number"), New DataColumn("QTY physical"), New DataColumn("QTY book"), New DataColumn("Total value"), New DataColumn("Username")})
            ViewState("Data") = dt
            Session("Datas") = ""
            Session("Numbers") = "0"
            Me.BindGrid()
        End If
    End Sub

    Protected Sub BindGrid()
        DisplayDatabase.DataSource = DirectCast(ViewState("Customers"), DataTable)
        DisplayDatabase.DataBind()
    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles BtnSubmit.Click

        Dim Part_Number As String = txtPartNumber.Text
        Dim Source As String = cmbSource.SelectedValue
        Dim Plant As String = cmbPlant.SelectedValue
        Dim Quantity_Physical As String = txtPhysical.Text
        Dim Quantity_Book As String = txtBook.Text
        Dim Variance As String = txtVariance.Text
        Dim Cover_Until As String = txtCoverUntil.Text
        Dim Reason_Code As String = txtReasonCode.Text
        Dim WC As String = txtWC.Text
        Dim Remarks As String = txtRemarks.Text
        Dim Total_Value As String = txtTotalValue.Text
        Dim Unit_Price As String = txtUnitPrice.Text
        Dim DocumentID As String = txtDocument.Text


        'MsgBox("Data Added Successfully!", MsgBoxStyle.Information, "Message")'
        txtDocument.Enabled = False
        cmbSource.Enabled = False
        cmbPlant.Enabled = False
        txtDocument.Text = DocumentID
        cmbSource.SelectedValue = Source
        cmbSource.SelectedValue = Source

        Dim dt As DataTable = DirectCast(ViewState("Data"), DataTable)
        'Take the stored user name to be shown
        Dim name As String = DirectCast(Session("name"), String)
        Dim dataRow = dt.Rows.Add(Part_Number.Trim(), Quantity_Physical.Trim(), Quantity_Book.Trim(), Total_Value.Trim(), name.Trim())
        ViewState("Customers") = dt
        If (Session("Datas") = "") Then
            Session("Datas") = DocumentID.Trim() & "," & Part_Number.Trim() & "," & Source.Trim() & "," & Plant.Trim() & "," & Quantity_Physical.Trim() & "," & Quantity_Book.Trim() & "," & Variance.Trim() & "," & Cover_Until.Trim() & "," & Unit_Price.Trim() & "," & Reason_Code.Trim() & "," & WC.Trim() & "," & Remarks.Trim() & "," & Total_Value & ";"
            Session("Numbers") = "1"
        Else
            Session("Datas") = Session("Datas") & DocumentID.Trim() & "," & Part_Number.Trim() & "," & Source.Trim() & "," & Plant.Trim() & "," & Quantity_Physical.Trim() & "," & Quantity_Book.Trim() & "," & Variance.Trim() & "," & Cover_Until.Trim() & "," & Unit_Price.Trim() & "," & Reason_Code.Trim() & "," & WC.Trim() & "," & Remarks.Trim() & "," & Total_Value & ";"
            Session("Numbers") = (Int32.Parse(Session("Numbers")) + 1).ToString()
        End If
        Me.BindGrid()
        txtPartNumber.Text = String.Empty
        txtPhysical.Text = String.Empty
        txtBook.Text = String.Empty
        txtVariance.Text = String.Empty
        txtCoverUntil.Text = String.Empty
        txtReasonCode.Text = String.Empty
        txtWC.Text = String.Empty
        txtRemarks.Text = String.Empty
        txtTotalValue.Text = String.Empty
        txtUnitPrice.Text = String.Empty

    End Sub

    Protected Sub BtnGenerate_Click(sender As Object, e As EventArgs) Handles BtnGenerate.Click

        Dim num As Integer

        Connect.Open()

        Dim cmd As SqlCommand = New SqlCommand("select max(documentid) from frompia", Connect)

        If IsDBNull(cmd.ExecuteScalar) Then
            num = 1
            txtDocument.Text = num
        Else
            num = cmd.ExecuteScalar + 1
            txtDocument.Text = num
        End If

        cmd.ExecuteNonQuery()

        Connect.Close()
    End Sub

    Protected Sub txtCoverUntil_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub txtPhysical_TextChanged(sender As Object, e As EventArgs) Handles txtPhysical.TextChanged
        If txtBook.Text <> "" Then
            Dim physical_qty As Int32 = Integer.Parse(txtPhysical.Text)
            Dim book_qty As Int32 = Integer.Parse(txtBook.Text)
            txtVariance.Text = (Math.Abs(physical_qty - book_qty)).ToString()
        End If
    End Sub

    Protected Sub txtBook_TextChanged(sender As Object, e As EventArgs) Handles txtBook.TextChanged
        If txtPhysical.Text <> "" Then
            Dim physical_qty As Int32 = Integer.Parse(txtPhysical.Text)
            Dim book_qty As Int32 = Integer.Parse(txtBook.Text)
            txtVariance.Text = (Math.Abs(physical_qty - book_qty)).ToString()
        End If
    End Sub

    Protected Sub txtVariance_TextChanged(sender As Object, e As EventArgs) Handles txtVariance.TextChanged
        If txtUnitPrice.Text <> "" Then
            Dim var_qty As Int32 = Integer.Parse(txtVariance.Text)
            Dim unit_price As Int32 = Integer.Parse(txtUnitPrice.Text)
            txtTotalValue.Text = (Math.Abs(var_qty * unit_price))
        End If
    End Sub

    Protected Sub txtUnitPrice_TextChanged(sender As Object, e As EventArgs) Handles txtUnitPrice.TextChanged
        If txtVariance.Text <> "" Then
            Dim var_qty As Int32 = Integer.Parse(txtVariance.Text)
            Dim unit_price As Int32 = Integer.Parse(txtUnitPrice.Text)
            txtTotalValue.Text = (Math.Abs(var_qty * unit_price))
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("ProcceedForm.aspx")
    End Sub

End Class