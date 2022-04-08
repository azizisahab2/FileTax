<%@ Page Title="" Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="AdminViewDSCRate1.aspx.cs" Inherits="FileTax.AdminViewDSCRate1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<style>
    .table-condensed tr th 
    {
        border: 0px solid #6e7bd9;
        color: white;
        background-color: #6e7bd9;
    }

    .table-condensed, .table-condensed tr td
    {
        border: 0px solid #000;
    }

    tr:nth-child(even) 
    {
        background: #f8f7ff;
    }

    tr:nth-child(odd) 
    {
        background: #fff;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="inner_content">
       <div class="w3l_agileits_breadcrumbs">
			<div class="w3l_agileits_breadcrumbs_inner">
				<ul>
					<li><a href="adminDashboard.aspx">Home</a><span>«</span></li>					
				</ul>
			 </div>
		 </div>

        <div class="inner_content_w3_agile_info two_in">
			
		    <div class="forms-main_agileits">						
				<div class="forms-inner">					
					<div class="set-1_w3ls">	
                        <%--<div class="col-md-1 graph-form"></div>--%>
						<div class="col-md-12 agile_info_shadow graph-form">
							<h3 class="w3_inner_tittle two">View DSC Information</h3> 
							<div class="grid-1">
								<div class="form-body">
									<div class="form-horizontal">
										<div runat="server" style="width:100%; height:400px; margin:0 auto; overflow-y: scroll;">
                                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                <Columns>                                                 
                                                    <asp:CommandField SelectText="Delete" ShowSelectButton="True" />
                                                </Columns>
                                            </asp:GridView> 
                                        </div>                                        
									</div> 
								</div>
							</div>
						</div>
						<%--<div class="col-md-1 graph-form"></div>--%>
						<div class="clearfix"> </div>
					 </div>
				</div>							
			</div> 	
             
		</div>	
    </div>
</asp:Content>
