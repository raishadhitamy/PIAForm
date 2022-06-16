<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainPage.aspx.vb" Inherits="PIAOnlineForm.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/mainpage.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Main Page</h2>
                   
                  <asp:Button ID="ButtonLogin" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Login" Width="308px" />
                  <asp:Button ID="ButtonRegister" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Register" Width="308px" />
                   
                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <p>
        &nbsp;</p>
    <p>
        +</p>
</body>
</html>