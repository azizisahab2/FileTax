<%@ Page Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="FileTax.change_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-gap"></div>
    <div class="container">
	<div class="row">
        <div class="col-sm-4"></div>
		<div class="col-sm-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:TextBox ID="txt_oldPass" CssClass="form-control" runat="server" placeholder="Old Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txt_newPass" CssClass="form-control" runat="server" placeholder="New Password"></asp:TextBox>
                        </div>
                    </div>
                        <div class="form-group">
                        <asp:Button ID="btn_changePass" class="btn btn-lg btn-primary btn-block" runat="server" Text="Change Password" OnClick="btn_changePass_Click" />
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <div class="col-sm-4"></div>
	</div>

</asp:Content>

