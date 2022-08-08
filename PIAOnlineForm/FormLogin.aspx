<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormLogin.aspx.vb" Inherits="PIAOnlineForm.FormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/login.css" rel="stylesheet" />
</head>
<body>

    <nav>
        <div class="logo">
            <p>PIA FORM</p>
        </div>
        <ul>
            <li><a href="MainPage.aspx">Home</a></li>
            <li><a href="Form">Login</a></li>
            <li><a href="FormRegistration.aspx">Register</a></li>
        </ul>
    </nav>

    <div class="container-fluid bg">
        <div class="row"> 
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Login Form</h2>

                  <div class="form-group">
                    <label for="exampleInputEmail1">KPK</label>
                    <asp:TextBox ID="txtKPK" CssClass="form-control" placeholder="KPK" runat="server"></asp:TextBox>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <asp:TextBox ID="txtPasswordLogin" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                  </div>

                  <div class="mb-3 row justify-content-center">
                    <asp:Button ID="ButtonLogin" CssClass="btn btn-block mt-4" runat="server" Text="Login" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                  </div>

                  <div class="mb-3 row justify-content-center">
                    <asp:Button ID="ButtonRegister" CssClass="btn btn-block mt-4" runat="server" Text="Register" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                  </div>

                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>