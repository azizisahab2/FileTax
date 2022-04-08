<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="FileTax.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>	
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"/>
		<link rel="icon" href="images/faviicon.png" type="image/png" sizes="24x29"/>   
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"/>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"/>

		<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300,300italic" rel="stylesheet" type="text/css"/>
		<link href="http://fonts.googleapis.com/css?family=Montserrat|Dancing+Script:700" rel="stylesheet" type="text/css"/>
		<link href="http://fonts.googleapis.com/css?family=Terminal+Dosis" rel="stylesheet" type="text/css"/>
	
	
		<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
		<link href="css/flickerplate.css"  type="text/css" rel="stylesheet"/>
		<link href="css/animate.min.css"  type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-lg-4 mt-5 mb-5 wow fadeInUp"  data-wow-duration="1000ms" data-wow-delay="300ms">
					<div class="col-xl-12 float-left shadow-sm border rounded basic-bg p-4">						
						  <div class="form-group">						
							<div class="fa-lg m-0 p-0 pt-3 pb-3 text-dark">Connect With Us</div>					
						   </div>
							  
						  <div class="form-group">						
							<%--<input type="text" class="form-control" placeholder="Name" required tabindex="1">--%>
							  <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder="Name"></asp:TextBox>
							  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please fill Name" ControlToValidate="txt_name" Display="Dynamic"></asp:RequiredFieldValidator>
						  </div>
						  <div class="form-group">							
							<%--<input type="email" class="form-control" placeholder="Email" required tabindex="2">--%>
							  <asp:TextBox ID="txt_email" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
							  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please fill Email" ControlToValidate="txt_email" Display="Dynamic"></asp:RequiredFieldValidator>
							  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Please fill valid email" ControlToValidate="txt_email" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

						   </div>
							 
						  <div class="input-group mb-2">
							<div class="input-group-prepend">
							  <div class="input-group-text">+91</div>
							</div>
							<%--<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Phone No" tabindex="2">--%>
							  <asp:TextBox ID="txt_phone" class="form-control" placeholder="Phone No" runat="server"></asp:TextBox>
							  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please fill your Number" ControlToValidate="txt_phone" Display="Dynamic"></asp:RequiredFieldValidator>
						  </div>

						  <div class="form-group mt-5 pb-5">	
							  <%--<button type="submit" class="btn submit float-right" tabindex="4">Submit</button>--%>
							  <asp:Button ID="btn_contact" class="btn submit float-right" runat="server" Text="Contact Us" OnClick="btn_contact_Click" />
						  </div>						
				</div>
		</div>
    </form>
</body>
</html>
