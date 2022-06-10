Public Class MainPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogin_Click(sender As Object, e As EventArgs) Handles ButtonLogin.Click
        Response.Redirect("FormLogin.aspx")
    End Sub

    Protected Sub ButtonRegister_Click(sender As Object, e As EventArgs) Handles ButtonRegister.Click
        Response.Redirect("FormRegistration.aspx")
    End Sub
End Class