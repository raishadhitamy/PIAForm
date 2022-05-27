<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainForm.aspx.vb" Inherits="PIAOnlineForm.MainForm" %>

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
            .auto-style3 {
                height: 24px;
            }
            .auto-style4 {
                height: 26px;
            }
            .auto-style5 {
                height: 30px;
            }
            .auto-style6 {
                height: 28px;
            }
        </style>
    </head>
    <form id="form1" runat="server">
    <div style="background-color:powderblue; font-size:xx-large; color:white" align="center">
        PIA FORM
    </div>
    <br />
    <div style="padding:15px">


        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Text="Document ID: "></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Part Number: "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPartNumber" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Plant: "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="cmbPlant" runat="server" Font-Size="Medium" Width="207px">
                        <asp:ListItem>P1</asp:ListItem>
                        <asp:ListItem>P2</asp:ListItem>
                        <asp:ListItem>PTAG</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Source: "></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="cmbSource" runat="server" Font-Overline="False" Font-Size="Medium" Height="16px" Width="207px">
                        <asp:ListItem>STORE (TC 40)</asp:ListItem>
                        <asp:ListItem>WIP (TC 41)</asp:ListItem>
                        <asp:ListItem>QUARANTINE (TC 42)</asp:ListItem>
                        <asp:ListItem>SUB CONT (40)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="QUANTITY - Physical: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhysical" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="QUANTITY - Book: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBook" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Cover Until (Weeks): "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCoverUntil" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Reason Code: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtReasonCode" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Text="W/C #: "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtWC" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Remarks: "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtRemarks" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" Text="Total Value: "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTotalValue" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Text="Unit Price (Rp): "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUnitPrice" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" Text="Total Value (Rp): "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTotalValueRP" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" BackColor="#91D5D1" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="30px" Text="Submit" Width="85px" />
                </td>
            </tr>
        </table>


    </div>
    </form>

</html>
