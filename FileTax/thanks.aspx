<%@ Page Title="" Language="C#" MasterPageFile="~/frontendMaster.Master" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="FileTax.thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-12 float-left p-0 m-0 pt-5 secondery-bg">
        <div class="col-xl-11 mx-auto p-5 mt-3">

            <div class="row">
				<div class="col-xl-2"></div>
                <div class="col-xl-8 heading-B wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="600ms">
                        

                    <h6>Thank you for DSC Application</h6>
                    <asp:LinkButton ID="btnLnk_download" runat="server" OnClick="btnLnk_download_Click">Download your invoice and instruction</asp:LinkButton>
                    <p>Our Representative will be with you within 24 hours for further processing.</p>

                    <asp:Literal ID="lit_dscId" runat="server" Visible="false"></asp:Literal>
                    <asp:Literal ID="lit_category" runat="server" Visible="false"></asp:Literal>
                </div>
				<div class="col-xl-2"></div>
            </div>

        </div>
    </div>
</asp:Content>
