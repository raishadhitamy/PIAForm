<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DirectorAgreement.aspx.vb" Inherits="PIAOnlineForm.DirectorAgreement" %>

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
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>

<body class="bg">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12">&nbsp;</div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">Director's Approval</h2>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Show the full data" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Names="Times New Roman" Font-Size="Large" />
                    </div>
                    <br />

                      <asp:GridView ID="DirDisplayDatabase" runat="server" Width="80%" BackColor="#FCE1E4" ForeColor="#FF6699" BorderColor="#C1BBDD" Font-Names="Times New Roman" Font-Size="Large"> 


                          <Columns>
                      <asp:TemplateField>
                         <ItemTemplate>
                            <asp:CheckBox ID="chkchild" runat="server"></asp:CheckBox>
                         </ItemTemplate>
                      </asp:TemplateField>
                    </Columns>

                          <HeaderStyle BackColor="#C1BBDD" Font-Names="Times New Roman" ForeColor="White" />


                      </asp:GridView> 

                    <br />

                    <div class="mb-3 row">
                 <div class="col-auto">
                      <label for="exampleInputSource">DIRECTOR'S APPROVAL</label>
                 </div>
                 <div class="auto-style1">
                      <asp:RadioButtonList ID="dir_approval" runat="server" BackColor="#E8DFF5" BorderColor="White" Font-Names="Times New Roman" ForeColor="#FF6699" Font-Size="Large">
                      <asp:ListItem>Approved</asp:ListItem>
                      <asp:ListItem>Not Approved</asp:ListItem>    
                      </asp:RadioButtonList>                
                 </div>
                 </div>

                    <asp:Button ID="DirBtnUpdate" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Update" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Names="Times New Roman" Font-Size="Large" />
                     
                    <asp:Button ID="Button2" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Log Out" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" ForeColor="White" Font-Names="Times New Roman" Font-Size="Large" />

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