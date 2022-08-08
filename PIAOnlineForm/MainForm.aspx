<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainForm.aspx.vb" Inherits="PIAOnlineForm.MainForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/mainform.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 16.666667%;
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>

    <nav>
        <div class="logo">
            <p>PIA Form</p>
        </div>
        <ul>
            <li><a href="MainPage.aspx">Home</a></li>
            <li><a href="MainForm.aspx">New Form</a></li>
            <li><a href="ApprovalInitiator.aspx">Show Data</a></li>
            <li><a href="MainPage.aspx">Log Out</a></li>
        </ul>
    </nav>

    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-12 col-sm-12"></div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">PIA Form</h2>

                    <div class="mb-3 row">
                        <div class="mb-3 row justify-content-center">
                            <asp:Button ID="Button2" CssClass="btn btn-block mt-4" runat="server" Text="Show the progress" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                        </div>
                        <div class="mb-3 row justify-content-center">
                            <asp:Button ID="BtnSubmit" CssClass="btn btn-block mt-4" runat="server" Text="Submit" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                    </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleArea">Area: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:DropDownList ID="cmbArea" CssClass="form-control" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleInputDocument">Document ID: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtDocument" CssClass="form-control" placeholder="Document ID" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <asp:Button ID="BtnGenerate" CssClass="btn btn-block" runat="server" Text="Generate Document ID" Width="250px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePlant">Plant: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:DropDownList ID="cmbPlant" CssClass="form-control" runat="server">
                                <asp:ListItem>P1</asp:ListItem>
                                <asp:ListItem>P2</asp:ListItem>
                                <asp:ListItem>PTAG</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleSource">Source: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:DropDownList ID="cmbSource" CssClass="form-control" runat="server">
                                <asp:ListItem>STORE (TC 40)</asp:ListItem>
                                <asp:ListItem>WIP (TC 41)</asp:ListItem>
                                <asp:ListItem>QUARANTINE (TC 42)</asp:ListItem>
                                <asp:ListItem>SUB CONT (40)</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Part Number: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtPartNumber" CssClass="form-control" placeholder="Part Number" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">QUANTITY - Physical: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtPhysical" CssClass="form-control" placeholder="Physical" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">QUANTITY - Book: </label>
                        </div>
                        <div class="auto-style1">
                            <asp:TextBox ID="txtBook" CssClass="form-control" placeholder="Book" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Variance: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtVariance" CssClass="form-control" Enabled="False" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Cover Until (Weeks): </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtCoverUntil" CssClass="form-control" placeholder="Cover Until" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleUnitPrice">Unit Price (Rp): </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtUnitPrice" CssClass="form-control" placeholder="Unit Price" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Total Value: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtTotalValue" CssClass="form-control" Enabled="False" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleReasonCode">Reason Code: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtReasonCode" CssClass="form-control" placeholder="Reason Code" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleReasonCode">W/C #: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtWC" CssClass="form-control" placeholder="W/C #" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleReasonCode">Remarks: </label>
                        </div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="txtRemarks" CssClass="form-control" placeholder="Remarks" runat="server"></asp:TextBox>
                        </div>
                    </div>

                  <br />
                    
                  <br />

                    <asp:GridView ID="DisplayDatabase" runat="server" Width="100%" BackColor="White" BorderColor="#C1BBDD" Font-Names="Arial" ForeColor="#90639E" Font-Size="Large">
                        <HeaderStyle BackColor="#C1BBDD" Font-Names="Arial" ForeColor="White" />
                    </asp:GridView> 

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-block mt-4" runat="server" Text="Proceed" Width="308px" BackColor="#C1BBDD" BorderColor="#C1BBDD" Font-Names="Arial" Font-Size="Large" ForeColor="White" />
                    </div>

                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>