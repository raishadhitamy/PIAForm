<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormRegistration.aspx.vb" Inherits="PIAOnlineForm.FormRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/regist.css" rel="stylesheet" />
</head>
<body>

    <nav>
        <div class="logo">
            <p>PIA FORM</p>
        </div>
        <ul>
            <li><a href="MainPage.aspx">Home</a></li>
            <li><a href="FormLogin.aspx">Log In</a></li>
            <li><a href="FormRegistration.aspx">Register</a></li>
        </ul>
    </nav>

    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-12">&nbsp;</div>
            <div class="col-md-4 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Registration Form</h2>

                  <div class="form-group">
                    <label for="exampleInputKPK">KPK</label>
                    <asp:TextBox ID="txtKPK" CssClass="form-control" placeholder="KPK" runat="server"></asp:TextBox>
                  </div>

		          <div class="form-group">
                    <label for="exampleInputName">Name</label>
                    <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputUserLevel">User Level</label>
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>Initiator</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Eng. Mgr</asp:ListItem>
                        <asp:ListItem>Mat. Mgr / Mat. Planner</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                        <asp:ListItem>President Director</asp:ListItem>
                    </asp:DropDownList>
                  </div>

                    <div class="form-group">
                    <label for="exampleInputKPK">KPK Manager</label>
                    <asp:TextBox ID="txtManager" CssClass="form-control" placeholder="KPK Manager" runat="server"></asp:TextBox>
                  </div>

                    <div class="form-group">
                    <label for="exampleInputKPK">KPK Eng. Mgr</label>
                    <asp:TextBox ID="txtEngMgr" CssClass="form-control" placeholder="KPK Eng. Mgr" runat="server"></asp:TextBox>
                  </div>

                    <div class="form-group">
                    <label for="exampleInputKPK">KPK Mat. Mgr</label>
                    <asp:TextBox ID="txtMatMgr" CssClass="form-control" placeholder="KPK Mat. Mgr" runat="server"></asp:TextBox>
                  </div>

                    <div class="form-group">
                    <label for="exampleInputKPK">KPK Director</label>
                    <asp:TextBox ID="txtDirector" CssClass="form-control" placeholder="KPK Director" runat="server"></asp:TextBox>
                  </div>

                    <div class="form-group">
                    <label for="exampleInputKPK">KPK President Director</label>
                    <asp:TextBox ID="txtPresidentDirector" CssClass="form-control" placeholder="KPK President Director" runat="server"></asp:TextBox>
                  </div>

                  <asp:Button ID="Button1" CssClass="btn btn-block mt-4" runat="server" Text="Register" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                  <asp:Button ID="ButtonLogin" CssClass="btn btn-block mt-4" runat="server" Text="Login" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                  
                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
