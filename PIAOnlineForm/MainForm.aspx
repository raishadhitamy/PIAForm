<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainForm.aspx.vb" Inherits="PIAOnlineForm.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/mainform.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-12 col-sm-12"></div>
            <div class="col-md-12 col-sm-12">
                <form class="container-form text-white" runat="server">
                    <h2 class="text-center mb-3">PIA Form</h2>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleInputDocument">Document ID: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtDocument" CssClass="form-control" placeholder="Document ID" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <asp:Button ID="BtnGenerate" CssClass="btn btn-primary btn-block" runat="server" Text="Generate Document ID" Width="250px" />
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Part Number: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtPartNumber" CssClass="form-control" placeholder="Part Number" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePlant">Plant: </label>
                        </div>
                        <div class="col-sm-7">
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
                        <div class="col-sm-7">
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
                            <label for="examplePartNumber">QUANTITY - Physical: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtPhysical" CssClass="form-control" placeholder="Physical" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">QUANTITY - Book: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtBook" CssClass="form-control" placeholder="Book" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Variance: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtVariance" CssClass="form-control" Enabled="False" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Cover Until (Weeks): </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtCoverUntil" CssClass="form-control" placeholder="Cover Until" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleUnitPrice">Unit Price (Rp): </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtUnitPrice" CssClass="form-control" placeholder="Unit Price" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="examplePartNumber">Total Value: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtTotalValue" CssClass="form-control" Enabled="False" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleReasonCode">Reason Code: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtReasonCode" CssClass="form-control" placeholder="Reason Code" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleReasonCode">W/C #: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtWC" CssClass="form-control" placeholder="W/C #" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm-2">
                            <label for="exampleReasonCode">Remarks: </label>
                        </div>
                        <div class="col-sm-7">
                            <asp:TextBox ID="txtRemarks" CssClass="form-control" placeholder="Remarks" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3 row justify-content-center">
                        <asp:Button ID="BtnSubmit" CssClass="btn btn-primary btn-block mt-4" runat="server" Text="Submit" Width="308px" />
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
    <p>
        +
    </p>
</body>
</html>
