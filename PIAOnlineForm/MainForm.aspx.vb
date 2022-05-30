Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class MainForm
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles BtnSubmit.Click

        Dim part_number As String = txtPartNumber.Text
        Dim source As String = cmbSource.SelectedValue
        Dim plant As String = cmbPlant.SelectedValue
        Dim physical As String = txtPhysical.Text
        Dim book As String = txtBook.Text
        Dim cover_until As String = txtCoverUntil.Text
        Dim reason_code As String = txtReasonCode.Text
        Dim w_c As String = txtWC.Text
        Dim remarks As String = txtRemarks.Text
        Dim total_value As String = txtTotalValue.Text
        Dim unit_price As String = txtUnitPrice.Text
        Dim total_value_rp As String = txtTotalValueRP.Text
        Dim documentid As String = txtDocument.Text

        Connect.Open()

        Dim frompia As String = Nothing
        Dim Command As New SqlCommand("Insert into frompia (part_number, source, plant, physical,book,cover_until,reason_code,w_c,remarks,total_value,unit_price,total_value_rp,documentid) values ('" & part_number & "', '" & source & "', '" & plant & "', '" & physical & "', '" & book & "', '" & cover_until & "', '" & reason_code & "', '" & w_c & "', '" & remarks & "', '" & total_value & "', '" & unit_price & "', '" & total_value_rp & "', '" & documentid & "')", Connect)
        Dim v = Command.ExecuteNonQuery()

        MsgBox("Data Added Successfully!", MsgBoxStyle.Information, "Message")

        Connect.Close()

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
End Class