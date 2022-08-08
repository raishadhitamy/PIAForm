<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EngManagerAgreement.aspx.vb" Inherits="PIAOnlineForm.EngManagerAgreement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/agreement.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</head>

<body class="bg">

    
    <nav>
        <div class="logo">
            <p>PIA Form</p>
        </div>
        <ul>
            <li><a href="MainPage.aspx">Home</a></li>
            <li><a href="EngManagerAgreement.aspx">Approval</a></li>
            <li><a href="FullDataEngManager.aspx">Full Data</a></li>
            <li><a href="MainPage.aspx">Log Out</a></li>
        </ul>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12">&nbsp;</div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Eng. Mgr Approval</h2>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-block mt-4" runat="server" Text="Show the full data" Width="308px" BackColor="#C1BBDD" ForeColor="White" BorderColor="#C1BBDD" Font-Bold="False" Font-Names="Arial" Font-Size="Large" />
                    </div>

                    <br />

                    <asp:GridView ID="EngDisplayDatabase" runat="server" Width="100%" BackColor="White" ForeColor="#90639E" BorderColor="#E8DFF5" Font-Bold="False" Font-Names="Arial" Font-Size="Large">

                    <Columns>
                      <asp:TemplateField>
                         <ItemTemplate>
                            <input id="chkchild"  runat="server" type="checkbox" />
                         </ItemTemplate>
                      </asp:TemplateField>
<asp:TemplateField><ItemTemplate>
                          <input id="showdata"  runat="server" type="button" />
                        
</ItemTemplate>
</asp:TemplateField>
                    </Columns>

                    <Columns>
                      <asp:TemplateField>
                        <ItemTemplate>
                          <input id="showdata"  runat="server" type="button" />
                        </ItemTemplate>
                      </asp:TemplateField>
                    </Columns>

                          <HeaderStyle BackColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />

                    </asp:GridView>

                    <br />

                 <div class="mb-3 row">  
                 <div class="col-auto">
                      <label for="exampleInputSource">ENG. MGR'S APPROVAL</label>
                 </div>
                 <div class="col-sm-3">
                      <asp:RadioButtonList ID="eng_man_approval" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="Large">
                      <asp:ListItem>Approved</asp:ListItem>
                      <asp:ListItem>Not Approved</asp:ListItem>    
                      </asp:RadioButtonList>                
                 </div>
                 </div>

                    <asp:Button ID="EngBtnUpdate" CssClass="btn btn-block mt-4" runat="server" Text="Update" Width="308px" BackColor="#C1BBDD" ForeColor="White" BorderColor="#C1BBDD" Font-Bold="False" Font-Names="Arial" Font-Size="Large" />

                    <asp:Button ID="Button2" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Log Out" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Names="Arial" Font-Size="Large" />
                 </form>
            </div>
            <div class="auto-style1"></div>
            </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>