<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="FileTax.login1" %>

<!DOCTYPE html dir="ltr">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title> Admin Login</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server" class="box">
        <h1>Login</h1>
        <%--<input type="text" name="" placeholder="Username">--%>
        <asp:TextBox ID="txt_email" runat="server" name="" placeholder="Username"></asp:TextBox>
        <%--<input type="password" name="" placeholder="Password">--%>
        <asp:TextBox ID="txt_password" runat="server" name="" placeholder="Password" TextMode="Password"></asp:TextBox>
        <%--<input type="submit" name="" value="Login">--%>
        <asp:Button ID="btn_submit" runat="server" Text="Login" OnClick="btn_submit_Click" />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </form>
</body>
</html>
