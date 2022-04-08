<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="querryForm.aspx.cs" Inherits="FileTax.querryForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<title></title>
	
</head>
<body>
    <form id="form1"  runat="server">
        <div>
            <asp:Literal ID="lit_ddate" runat="server"></asp:Literal>
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please fill your Name" ControlToValidate="txt_name" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Please fill your Country" ControlToValidate="txt_country" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Please fill your Email" ControlToValidate="txt_email" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txt_question" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Please fill your Question" ControlToValidate="txt_question" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
        </div> 
	</form>
</body>
</html>
