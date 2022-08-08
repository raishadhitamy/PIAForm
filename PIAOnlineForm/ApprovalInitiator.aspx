﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ApprovalInitiator.aspx.vb" Inherits="PIAOnlineForm.ApprovalInitiator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/approval.css" rel="stylesheet" />
    <link href="additional-file/css/initiator.css" rel="stylesheet" />
</head>
<body>

    <nav>
        <div class="logo">
            <p>PIA Form</p>
        </div>
        <ul>
            <li><a href="mainpage.aspx">Home</a></li>
            <li><a href="mainform.aspx">New Form</a></li>
            <li><a href="approvalinitiator.aspx">Show Data</a></li>
            <li><a href="mainpage.aspx">Log Out</a></li>
        </ul>
    </nav>

    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-12 col-sm-12"></div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3"></h2>

                    <div Class="mb-3 row">
                            <div Class="col-sm-1">
                              <Label for="exampleInputDocument"Search data: </label>
                            </div>
                            <div class="col-sm-2">
                              <asp:DropDownList ID="cmbInitiator" CssClass="form-control" runat="server">
                                <asp:ListItem Value="1">Document ID</asp:ListItem>
                                <asp:ListItem Value="2">Part Number</asp:ListItem>
                                <asp:ListItem Value="3">Plant</asp:ListItem>
                                <asp:ListItem Value="4">Source</asp:ListItem>
                              </asp:DropDownList>
                            </div>
                            <div Class="col-sm-2">
                                <asp:TextBox ID = "InTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div Class="col-sm-2">
                                <asp:Button ID = "InButton" CssClass="btn btn-primary btn-block" runat="server" Text="Search" Width="250px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" />
                            </div>
                       </div>

                    <asp:GridView ID="DisplayDatabase" runat="server" Width="91%" BackColor="#FCE1E4" BorderColor="#C1BBDD" BorderStyle="Solid" ForeColor="#FF6699" Font-Names="Arial" Font-Size="Large">
                        <HeaderStyle BackColor="#C1BBDD" Font-Bold="False" Font-Names="Arial" ForeColor="White" />
                    </asp:GridView> 

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button2" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Log Out" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Bold="False" Font-Names="Arial" Font-Size="Large" />
                    </div>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="New Form" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Bold="False" Font-Names="Arial" Font-Size="Large" />
                    </div>

                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <p>
        &nbsp;
    </p>
</body>
</html>