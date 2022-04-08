<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test-FAQ.aspx.cs" Inherits="FileTax.Test_FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <script>document.getElementsByTagName("html")[0].className += " js";</script>
      <link rel="stylesheet" href="assets/css/style.css"/>
      <title>FAQ </title>
</head>
<body>
    <form id="form1" runat="server">
		<header class="cd-header flex flex-column flex-center">
			  <div class="text-component text-center">
					<div class="form-group">
						<h2><asp:Label ID="Label1" runat="server" Text="Select Services" CssClass="label-info"></asp:Label>   </h2>
							<asp:Literal ID="lit_serviceId" runat="server" Visible="false"></asp:Literal>
						<asp:DropDownList ID="ddl_serviceName" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_serviceName_SelectedIndexChanged">
							<asp:ListItem>Select Service</asp:ListItem>
						</asp:DropDownList>
					</div>
			  </div>
		</header>
        <section class="cd-faq js-cd-faq container max-width-md margin-top-lg margin-bottom-lg" >
			<ul class="cd-faq__categories">
				<li><a class="cd-faq__category cd-faq__category-selected truncate" href="#basics">
				<asp:Literal ID="lit_faq" runat="server"></asp:Literal></a></li>
			</ul> 
			<!-- cd-faq__categories -->
			<div class="cd-faq__items">
				<ul id="basics" class="cd-faq__group">
					<li class="cd-faq__title"><h2>FAQ</h2></li>
					<li class="cd-faq__item">
						<asp:Repeater ID="RepeaterFAQ" runat="server">
								<ItemTemplate>
									<a class="cd-faq__trigger" href="#0"><span><asp:Literal ID="lit_FAQ" Text='<%#Eval("question") %>' runat="server"></asp:Literal></span></a>
									<div class="cd-faq__content">
									  <div class="text-component">
										<p><asp:Literal ID="lit_queNo" Text='<%#Eval("question").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal>
											<asp:Literal ID="lit_FAQ1" Text='<%#Eval("answer").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal></p>
									  </div>
									</div>
								</ItemTemplate>
						</asp:Repeater>
					</li>
				</ul>
			</div> 
		<a href="#0" class="cd-faq__close-panel text-replace">Close</a>
		<div class="cd-faq__overlay" aria-hidden="true"></div>
		</section> 
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script> 
    </form>
</body>
</html>
