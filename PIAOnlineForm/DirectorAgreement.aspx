<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DirectorAgreement.aspx.vb" Inherits="PIAOnlineForm.DirectorAgreement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/agreement.css" rel="stylesheet" />
</head>

<body class="bg">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12">&nbsp;</div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Director's Approval</h2>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Show the full data" Width="308px" />
                    </div>

                      <asp:GridView ID="DirDisplayDatabase" runat="server" Width="80%"> </asp:GridView> 

                    <div class="mb-3 row">
                 <div class="col-auto">
                      <label for="exampleInputSource">DIRECTOR'S APPROVAL</label>
                 </div>
                 <div class="col-sm-3">
                      <asp:RadioButtonList ID="dir_approval" runat="server">
                      <asp:ListItem>Approved</asp:ListItem>
                      <asp:ListItem>Not Approved</asp:ListItem>    
                      </asp:RadioButtonList>                
                 </div>
                 </div>

                    <asp:Button ID="DirBtnUpdate" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Update" Width="308px" />

                 </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
            </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    
    <p>
        &nbsp;</p> 
</body>
</html>