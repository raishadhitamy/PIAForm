<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgreementForm.aspx.vb" Inherits="PIAOnlineForm.AgreementForm" %>

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
            .auto-style3 {
                height: 16px;
            }
            .auto-style4 {
                height: 25px;
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
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Search" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="MANAGER'S APPROVAL"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Approve" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="ENG. MGR'S APPROVAL"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Approve" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="MAT. MGR / MAT. PLANNER'S APPROVAL"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Approve" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="DIRECTOR'S APPROVAL"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Approve" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="PRESIDENT DIRECTOR'S APPROVAL"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Approve" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Update" />
                </td>
            </tr>
        </table>
        <div align="center">
        <hr />

            <br />
            <asp:GridView ID="GridView1" runat="server" Width="80%">
                <HeaderStyle BackColor="#91D5D1" ForeColor="White" />
            </asp:GridView>

        </div>

    </div>
        
    </form>

        
</html>
