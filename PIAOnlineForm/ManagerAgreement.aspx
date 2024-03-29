﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManagerAgreement.aspx.vb" Inherits="PIAOnlineForm.ManagerAgreement" %>

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

    
    <nav>
        <div class="logo">
            <p>PIA Form</p>
        </div>
        <ul>
            <li><a href="MainPage.aspx">Home</a></li>
            <li><a href="ManagerAgreement.aspx">Approval</a></li>
            <li><a href="FullDataManager.aspx">Full Data</a></li>
            <li><a href="MainPage.aspx">Log Out</a></li>
        </ul>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12">&nbsp;</div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Manager's Approval</h2>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Show the full data" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" />
                    </div>

                    <br />

                      <asp:GridView ID="ManagerDisplayDatabase" runat="server" Width="100%" BackColor="White" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="#C69FF9">

                    <Columns>
                      <asp:TemplateField>
                        <ItemTemplate>
                          <input id="chkchild"  runat="server" type="checkbox" />
                        </ItemTemplate>
                      </asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Full Data" ShowHeader="True" Text="Show Data" />
                    </Columns>

                       <HeaderStyle BackColor="#C1BBDD" ForeColor="White" />

                    </asp:GridView> 

                    <br />

                    <div class="mb-3 row">
                 <div class="col-auto">
                      <label for="exampleInputSource">MANAGER'S APPROVAL</label>
                 </div>
                 <div class="col-sm-3">
                      <asp:RadioButtonList ID="man_approval" runat="server" Font-Names="Times New Roman" Font-Size="Large">
                      <asp:ListItem>Approved</asp:ListItem>
                      <asp:ListItem>Not Approved</asp:ListItem>    
                      </asp:RadioButtonList>                
                 </div>
                 </div>

                    <asp:Button ID="ManagerBtnUpdate" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Update" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" />

                    <asp:Button ID="Button2" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Log Out" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Names="Arial" Font-Size="Large" />

                 </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
            </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
   
</body>
</html>