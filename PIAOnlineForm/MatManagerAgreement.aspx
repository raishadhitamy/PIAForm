<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MatManagerAgreement.aspx.vb" Inherits="PIAOnlineForm.MatManagerAgreement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <style type="text/css">
            .auto-style1 {
                width: 100%;
            }
            .auto-style2 {
                height: 24px;
            }
            .auto-style4 {
                height: 25px;
            }
            .auto-style5 {
                height: 26px;
            }
        </style>
    </head>
    <form id="form1" runat="server">
    <div style="background-color:powderblue; font-size:xx-large; color:white" align="center">
        Agreement Form
    </div>
    <br />
    <div style="padding:15px">

        <table class="auto-style1">

            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Document ID: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="MatTextBox" runat="server" Font-Size="Medium" Width="175px"></asp:TextBox>
                    <asp:Button ID="MatButton" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Search" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="MAT. MGR / MAT. PLANNER'S APPROVAL"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="mat_mgr_approval" runat="server">
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Not Approved</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>

            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="MatBtnUpdate" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Update" />
                </td>
            </tr>
        </table>
        <div align="center">
        <hr />

            <br />
            <asp:GridView ID="MatDisplayDatabase" runat="server" Width="80%">
                <HeaderStyle BackColor="#91D5D1" ForeColor="White" />
            </asp:GridView>

        </div>

    </div>
        
    </form>
</html>
