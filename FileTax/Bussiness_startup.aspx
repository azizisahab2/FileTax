<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bussiness_startup.aspx.cs" Inherits="FileTax.Bussiness_startup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Tax India</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>document.getElementsByTagName("html")[0].className += " js";</script>
    <link rel="stylesheet" href="assets/css/style.css"/>   
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                 <asp:Image ID="Image1" class="img-thumbnail" runat="server" ImageUrl="~/image/business-ideas.jpeg" />
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group" style="text-align:left">
                                        <asp:DropDownList ID="ddl_serviceName" class="form-control" runat="server" OnSelectedIndexChanged="ddl_serviceName_SelectedIndexChanged" AutoPostBack="True">
                                            <asp:ListItem>Select Service</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group" style="text-align:right">
                                        <asp:Label ID="Label1" runat="server" Text="Rs."></asp:Label>
                                        <asp:Literal ID="lit_basicprice" runat="server" ></asp:Literal>
                                        <asp:Literal ID="lit_standrdPrice" runat="server" ></asp:Literal>
                                        <asp:Literal ID="lit_premiumPrice" runat="server" ></asp:Literal>
                                        <asp:Literal ID="lit_packagePrice" runat="server" Visible="false" ></asp:Literal>
                                        <asp:Literal ID="lit_packagePrice2" runat="server" Visible="false"></asp:Literal>
                                        <asp:Literal ID="lit_packagePrice3" runat="server" Visible="false" ></asp:Literal>
                                        <br />
                                        <h6>All inclusive price</h6>
                                    </div>
                                </div>
                            </div>
                       
                            <div class="form-group">
                                <h5>Select Package</h5>
                                <div class="form-group">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#basic">Basic</a></li>
                                        <li><a data-toggle="tab" href="#standard">Standard </a></li>
                                        <li><a data-toggle="tab" href="#premium">Premium </a></li>
                                    </ul>

                                    <div class="tab-content">
                                        <div id="basic" class="tab-pane fade in active">
                                            <h3>Basic</h3>
                                            <p><asp:Literal ID="Literal1" runat="server"></asp:Literal></p>
                                        </div>
                                        <div id="standard" class="tab-pane fade">
                                            <h3>Standard</h3>
                                            <p><asp:Literal ID="Literal2" runat="server"></asp:Literal></p>
                                        </div>
                                        <div id="premium" class="tab-pane fade">
                                            <h3>Premium</h3>
                                            <p><asp:Literal ID="Literal3" runat="server"></asp:Literal></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group"><asp:Literal ID="lit_text" runat="server"></asp:Literal></div>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <h3>Contact Us</h3>
                                <asp:TextBox ID="txt_name" Class="form-control" runat="server" placeholder="Name"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txt_email" Class="form-control" runat="server" placeholder="Email"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txt_phone" Class="form-control" runat="server" placeholder="Phone"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" Text="Get Started" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="col-sm-4">
                        <asp:Panel ID="Panel3" class="panel panel-default" runat="server">
                            <div class="form-group" style="background-color: #2250fc; text-align:center; color:aliceblue; width:auto; height:200px; ">
                                <h2>Basic</h2>
                                <h1><asp:Literal ID="lit_BasicPrice1" runat="server"></asp:Literal></h1>
                                <h2><asp:Literal ID="lit_basicCutPrice" runat="server"></asp:Literal></h2>
                                <h5>all inclusive fees</h5>
                            </div>

                            <div class="form-group">
                                <asp:Literal ID="lit_serviceId" runat="server" Visible="false"></asp:Literal>
                                <asp:Literal ID="lit_basicList1" runat="server" Visible="false"></asp:Literal>
                                <ul>
                                    <asp:Repeater ID="RepDetailBasc" runat="server">                        
                                        <ItemTemplate>
                                            <li><asp:Literal ID="lit_servicesDesc" Text='<%#Eval("service_text").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4"></div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Button" style="background-color:#2250fc;"/>
                                    </div>
                                    <div class="col-sm-4"></div>
                                </div>
                            </div>
                       </asp:Panel>     
                    </div>

                    <div class="col-sm-4">
                        <asp:Panel ID="Panel1" class="panel panel-default" runat="server">
                            <div class="form-group" style="background-color: #2250fc; text-align:center; color:aliceblue; width:auto; height:200px;">
                                <h2>Standard</h2>
                                <h1><asp:Literal ID="lit_standardPrice" runat="server"></asp:Literal></h1>
                                <h2><asp:Literal ID="lit_standardCutPrice" runat="server"></asp:Literal></h2>
                                 <h5>All inclusive fees</h5>
                            </div>

                            <div class="form-group">
                                <asp:Literal ID="lit_basicList2" runat="server" Visible="false"></asp:Literal>
                                <ul>
                                    <asp:Repeater ID="RepDetailStandard" runat="server">                        
                                        <ItemTemplate>
                                            <li><asp:Literal ID="lit_servicesDesc1" Text='<%#Eval("service_text").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal></li>
                                        </ItemTemplate>
                                    </asp:Repeater>                          
                                </ul>                        
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4"></div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Button" style="background-color:#2250fc;"/>
                                    </div>
                                    <div class="col-sm-4"></div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>

                    <div class="col-sm-4">
                        <asp:Panel ID="Panel2" class="panel panel-default" runat="server">
                            <div class="form-group" style="background-color: #2250fc; text-align:center; color:aliceblue; width:auto; height:200px;">
                                <h2>Premium</h2>
                                <h1><asp:Literal ID="lit_PremiumPrice1" runat="server"></asp:Literal></h1>
                                <h2><asp:Literal ID="lit_premiumCutPrice" runat="server"></asp:Literal></h2>
                                <h5>all inclusive fees</h5>
                            </div>

                            <div class="form-group">
                                <asp:Literal ID="lit_basicList3" runat="server" Visible="false"></asp:Literal>
                                <ul>
                                    <asp:Repeater ID="RepDetailPremium" runat="server">                        
                                        <ItemTemplate>
                                            <li><asp:Literal ID="lit_servicesDesc3" Text='<%#Eval("service_text").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal></li>
                                        </ItemTemplate>
                                    </asp:Repeater>                             
                               </ul>                        
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4"></div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Button" style="background-color:#2250fc;"/>
                                    </div>
                                    <div class="col-sm-4"></div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <asp:Literal ID="lit_service_desc" runat="server" Visible="false"></asp:Literal>
                        <ul>
                            <asp:Repeater ID="RepeaterDesc" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <asp:Literal ID="Service_Desc" Text='<%#Eval("description").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                </div>
                <div class="col-sm-4"></div>
                <div class="col-sm-4"></div>
            </div>
            <%--<div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <asp:Literal ID="lit_Re_FAQ" runat="server" Visible="false"></asp:Literal>
                    <section class="cd-faq js-cd-faq container max-width-md margin-top-lg margin-bottom-lg" >
		                <ul class="cd-faq__categories">
			                <li ><a class="cd-faq__category cd-faq__category-selected truncate" href="#basics" visible="false">Basics</a></li>
		                </ul> 
			            <!-- cd-faq__categories -->
			            <div class="cd-faq__items">
				            <ul id="basics" class="cd-faq__group">
					            <li class="cd-faq__title"><h2>Basics</h2></li>
					            <li class="cd-faq__item">
	                                <asp:Literal ID="lit_question" runat="server"></asp:Literal>
                                    <br />
                                    <br />
                                    <asp:Literal ID="lit_answer" runat="server"></asp:Literal>
                                    <asp:Repeater ID="RepeaterFAQ" runat="server" OnItemCommand="RepeaterFAQ_ItemCommand">
								            <ItemTemplate>
									            <a class="cd-faq__trigger" href="#0"><span>
                                                    <br /><asp:Literal ID="lit_FAQ" Text='<%#Eval("question").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal></span></a>
									            <div class="cd-faq__content">
									              <div class="text-component">
										            <p><asp:Literal ID="lit_FAQ1" Text='<%#Eval("answer").ToString().Replace("[%]",ch) %>' runat="server"></asp:Literal></p>
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
                </div>
            <div class="col-sm-1"></div>
        </div>--%>
        </div>  
        <script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
    </form>
</body>
</html>
