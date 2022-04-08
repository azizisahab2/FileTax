<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact-with-us.aspx.cs" Inherits="FileTax.Contact_with_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Tax India</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt_name" CssClass="form-group" runat="server" placeholder="name"></asp:TextBox>
            <asp:TextBox ID="txt_email" CssClass="form-group" runat="server" palceholder="email"></asp:TextBox>
            <asp:TextBox ID="txt_mobile" CssClass="form-group" runat="server" placeholder="mobile"></asp:TextBox>
            <asp:TextBox ID="txt_companyName" CssClass="form-group" runat="server" placeholder="company name"></asp:TextBox>
            <asp:TextBox ID="txt_businessType" CssClass="form-group" runat="server" placeholder="business"></asp:TextBox>
            <asp:TextBox ID="txt_address" CssClass="form-group" runat="server" placeholder="address"></asp:TextBox>
            <asp:TextBox ID="txt_state" CssClass="form-group" runat="server" placeholder="state"></asp:TextBox>
            <asp:TextBox ID="txt_postal" CssClass="form-group" runat="server" placeholder="postal"></asp:TextBox>
            <asp:Button ID="btn_submit" CssClass="btn-primary" runat="server" Text="submit" OnClick="btn_submit_Click" />
        </div>
    </form>
</body>
</html>
