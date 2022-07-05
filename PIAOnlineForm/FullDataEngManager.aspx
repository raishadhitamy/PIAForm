﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FullDataEngManager.aspx.vb" Inherits="PIAOnlineForm.FullDataEngManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/fulldata.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-12 col-sm-12"></div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3"></h2>

                    <asp:GridView ID="DisplayDatabase" runat="server" Width="91%" BorderColor="#C1BBDD" Font-Names="Times New Roman" Font-Size="Large" BackColor="#FCE1E4" CssClass="auto-style1" ForeColor="#90639E">
                        <HeaderStyle BackColor="#C1BBDD" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" />
                    </asp:GridView> 

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-block mt-4" runat="server" Text="Back" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" />
                    </div>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button2" CssClass="btn btn-block mt-4" runat="server" Text="Log Out" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" />
                    </div>

                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>