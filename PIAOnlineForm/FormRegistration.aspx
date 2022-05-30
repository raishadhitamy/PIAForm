<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormRegistration.aspx.vb" Inherits="PIAOnlineForm.FormRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 181px;
        }
        .auto-style2 {
            height: 28px;
        }
    </style>
</head>
<body>
 
    <form id="form1" runat="server">
 
    <div style="background-color:powderblue; font-size:xx-large; color:white" align="center">
        REGISTRATION FORM
    </div>

    <br />

    <div style="padding:15px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="KPK: "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtKPK" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Name: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Email: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="Medium" Width="200px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Password: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Font-Size="Medium" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="User Level: "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem>Initiator</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Eng. Mgr</asp:ListItem>
                        <asp:ListItem>Mat. Mgr/Mat. Planner</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                        <asp:ListItem>President Director</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="33px" Text="Register" Width="90px" />
                    <asp:Button ID="ButtonLogin" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="33px" Text="Login" Width="91px" />
                </td>
            </tr>
            </table>
      
    </div>

    </form>

</body>
</html>
