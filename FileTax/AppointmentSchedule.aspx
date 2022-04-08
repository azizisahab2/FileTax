<%@ Page Title="" Language="C#" MasterPageFile="~/frontendMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentSchedule.aspx.cs" Inherits="FileTax.AppointmentSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

     <div class="col-xl-12 float-left p-0 m-0 pt-5 secondery-bg">
        <div class="col-xl-11 mx-auto p-5 mt-3">

            <div class="row">
				<div class="col-xl-2"></div>
                <div class="col-xl-8 heading-B wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="600ms">                    
                   
                    <div class="col-lg-8 p-0 float-left">                        
                        <p> 
                            <span style="color:red">
                                <asp:Literal ID="lit_msg" runat="server"></asp:Literal><br />
                                <asp:Literal ID="lit_msg1" runat="server" Visible="false"></asp:Literal>
                            </span>
                            <asp:Literal ID="lit_month" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_amPm" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="txt_year" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="txt_month" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_dscId" runat="server" Visible="false"></asp:Literal>
                        </p>
                    </div>
                    
                    <div class="col-lg-4 p-0 float-left"></div>
                                      
                    <div class="col-lg-12 mt-5 mb-5">                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="col-lg-12 m-auto">
                                    <div class="col-xl-12 float-left query-box rounded-25 p-0 m-0 p-5 mt-3 mb-5">
                                          
                                        <div class="form-group">						
                                            <div class="carousel-title text-green">Appoinment Schedule</div>
                                            <%--<p class="text-green">Fill all your details carefully.</p>--%>
                                        </div>                                      
                                          
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">						
                                                    <asp:DropDownList ID="ddl_dayNo" runat="server" class="form-control input" AutoPostBack="True" OnSelectedIndexChanged="ddl_dayNo_SelectedIndexChanged">                                    
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="form-group">							
                                                    <asp:DropDownList ID="ddl_time" runat="server" class="form-control input">                                    
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>                                    
                                             
                                        <div class="form-group mt-3">	
                                            <asp:Button ID="tbl_submit" runat="server" Text="Submit" class="btn btn-query" OnClick="tbl_submit_Click" />
                                        </div>

                                        <span style="color:green">
                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                        </span>           
                                    </div>
	                            </div>                                
                            </ContentTemplate>
                        </asp:UpdatePanel>                                                                             
                    </div>                   
                </div>
				<div class="col-xl-2"></div>
            </div>
        </div>
    </div>
</asp:Content>
