<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormLogin.aspx.vb" Inherits="PIAOnlineForm.FormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <style type="text/css">
            .auto-style1 {
                width: 100%;
            }
            .auto-style2 {
                height: 23px;
            }
        </style>
    </head>

    <form id="form1" runat="server">

    <div style="background-color:powderblue; font-size:xx-large; color:white" align="center">
        LOGIN FORM
    </div>
    <br />
    <div style="padding:15px">

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Email: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmailLogin" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Password: "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPasswordLogin" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonLogin" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="28px" Text="Login" Width="63px" />
                </td>
            </tr>
        </table>

    </div>


    </form>



</html>
