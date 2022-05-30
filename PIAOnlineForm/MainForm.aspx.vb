Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class MainForm
    Inherits System.Web.UI.Page
    Dim Connect As New SqlConnection("Data Source=APCKRMPTMD01TV, 41433;Initial Catalog=PTMI_INV;Persist Security Info= False;Integrated Security = False; User ID=PTMIIC;Password=PTMIIC@123")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles BtnSubmit.Click

        Dim Part_Number As String = txtPartNumber.Text
        Dim Source As String = cmbSource.SelectedValue
        Dim Plant As String = cmbPlant.SelectedValue
        Dim Quantity_Physical As String = txtPhysical.Text
        Dim Quantity_Book As String = txtBook.Text
        Dim Cover_Until As String = txtCoverUntil.Text
        Dim Reason_Code As String = txtReasonCode.Text
        Dim WC As String = txtWC.Text
        Dim Remarks As String = txtRemarks.Text
        Dim Total_Value As String = txtTotalValue.Text
        Dim Unit_Price As String = txtUnitPrice.Text
        Dim Total_Value_RP As String = txtTotalValueRP.Text
        Dim DocumentID As String = txtDocument.Text

        Connect.Open()

        Dim frompia As String = Nothing
        Dim Command As New SqlCommand("Insert into frompia (Part_Number, Source, Plant, Quantity_Physical, Quantity_Book, Cover_Until, Reason_Code, WC, Remarks, Total_Value, Unit_Price, Total_Value_RP, DocumentID) values ('" & Part_Number & "', '" & Source & "', '" & Plant & "', '" & Quantity_Physical & "', '" & Quantity_Book & "', '" & Cover_Until & "', '" & Reason_Code & "', '" & WC & "', '" & Remarks & "', '" & Total_Value & "', '" & Unit_Price & "', '" & Total_Value_RP & "', '" & DocumentID & "')", Connect)
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