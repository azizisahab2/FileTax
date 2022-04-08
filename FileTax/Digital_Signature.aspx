<%@ Page Title="" Language="C#" MasterPageFile="~/adminLoginMaster.Master" AutoEventWireup="true" CodeBehind="Digital_Signature.aspx.cs" Inherits="FileTax.Digital_Signature" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

    .f-c-box{
        width:90%; 
        margin:0 auto;
    }

	.sub-f-c-box
    {
	    width:100%; 
	    float:left; 	
	    margin-top:50px;	
	}

	.contain {
	    width:100%; 
	    float:left;
	    padding:15px;    
        background: #fff;
        margin:0 auto;
        box-shadow: 0 15px 16.83px 0.17px rgba(0,0,0,.05);
        -moz-box-shadow: 0 15px 16.83px .17px rgba(0,0,0,.05);
        -webkit-box-shadow: 0 15px 16.83px 0.17px rgba(0,0,0,.05);
        -o-box-shadow: 0 15px 16.83px .17px rgba(0,0,0,.05);
        -ms-box-shadow: 0 15px 16.83px .17px rgba(0,0,0,.05);
        border-radius: 20px;
        -moz-border-radius: 20px;
        -webkit-border-radius: 20px;
        -o-border-radius: 20px;
        -ms-border-radius: 20px;
    }

    input{
	    height:35px !important;
	}

  	h1{		
		text-align:center;
		font-size:35px !important;
		background: -webkit-linear-gradient(left, #E677BC, #3076BE) !important;
	    -webkit-background-clip: text !important;
	    /*-webkit-text-fill-color: transparent !important;*/
	    text-shadow: 1px 1px #999 !important;		
	}
	
	.p{
		color:#006 !important;
		text-align:center;
	}
	
	.fld{
		padding-left:15px; 
		color:#BCBEC3 !important; 
		border-radius:100px; 		
	}

	label{
		font-weight:400; 
		color:#666 !important;
		padding-left:15px;		
		float:left!important; 
		text-align:left !important; 
	}

	/*.process-wizard{
		float:left;
		padding:5px 10px 5px 10px;
		background:#F1F1F1;
		color:#333333;
		font-size:13px;
		margin:4px;
		border-radius:50px;
		border:1px solid #BBBBBB;
		}*/

	.information{
		
		background:#F1F1F1;
		color:#333333;		
		border:1px solid #BBBBBB;		
	}

	.file{
		padding-left:1px !important; 
		padding-top:1px; 
		padding-bottom:0;
	}

	.btning{
		width:100%; 
		float:left;
		 margin-top:25px; 
		 border-radius:100px;
		 padding:10px 0 10px 0;  
		 background:#006;
		 color:#FFF; 
		 border:none;
		 background: #E677BC; 
  		 background: -webkit-linear-gradient(left, #E677BC, #3076BE, #E677BC);
  		 background: linear-gradient(left, #E677BC, #3076BE, #E677BC);
	}

	.btning:hover{
		background: #0575e6; /* fallback for old browsers */
  		background: -webkit-linear-gradient(to right, #0575e6, #021b79); /* Chrome 10-25, Safari 5.1-6 */
  		background: linear-gradient(to right, #0575e6, #021b79); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	}		

     /* Style the tab */
	.tab {
		
		float:left;   	
		padding:0;
		margin:0;
	}
	
	/* Style the buttons inside the tab */
    .tab a {
        float: left;
        padding: 5px 30px 5px 30px;
        background: #F1F1F1;
        color: #333333 !important;
        font-size: 13px;
        letter-spacing: 1px;
        text-transform: uppercase;
        font-weight: 600;
        border-top: 1px solid #BBBBBB !important;
        ;
        border-bottom: none;
        border-left: none;
        border-right: none;
        cursor: pointer;
        transition: 0.3s;
        font-size: 12px;
        border-radius: 0 !important;
    }

    /* Change background color of buttons on hover */
    .tab a:hover {
        background: #E677BC;
        background: -webkit-linear-gradient(left, #E677BC, #3076BE, #E677BC);
        background: linear-gradient(left, #E677BC, #3076BE, #E677BC);
        text-shadow: px 1px 1px #999 !important;
        color: #FFF !important;
    }

    /* Create an active/current tablink class */
    .tab a.active {
        background: #0575e6;
        background: -webkit-linear-gradient(to right, #0575e6, #021b79);
        background: linear-gradient(to right, #0575e6, #021b79);
        text-shadow: px 1px 1px #999 !important;
        color: #FFF !important;
    }

    /* Style the tab content */
    .tabcontent {
        display: none;
        width: 100%;
        float: left;
        background: #F1F1F1;
        border: 1px solid #BBBBBB;
        padding: 25px 5px 25px 5px;
        margin: 0 0 10px 0;
        border-radius: 0 8px 8px 8px;
    }

    .l-b {
        border-radius: 8px 0 0 0 !important;
        border-left: 1px solid #BBBBBB !important;
    }

    .r-b {
        border-radius: 0 8px 0 0 !important;
        border-right: 1px solid #BBBBBB !important;
    }

    .nav, .nav-tabs {
        border: none !important;
    }
    
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xl-12 float-left p-0 m-0 pt-5 secondery-bg">
        <div class="col-xl-11 mx-auto p-5 mt-5 ">
           <div class="row">
				<div class="col-xl-2"></div>
                <div class="col-xl-8 heading-B wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="600ms">                    
                   
					<div class="col-12" style="margin-top:25px;">
                        <h1>Please Select any Tab Below the Instruction</h1> 
                        <div class="col-lg-8 p-0 float-left">
                            <ul class="numbering">
                                <li><p><strong>Please Select Individual/Proprietorship Tab For your  Self.</strong></p></li>
                                <li><p><strong>Please Select Partnership/LLP Tab if you buy for Partnership/LLP.</strong></p></li>
                                <li><p><strong>Please Select Company Tab if you buy For Your Company.</strong></p></li>                                    
                                <span style="color:red"><asp:Literal ID="lit_msg" runat="server"></asp:Literal></span>
                                <span style="color:green"><asp:Literal ID="lit_msgChk" runat="server"></asp:Literal></span>                                   
                            </ul>
                            <asp:Literal ID="lit_userType" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_purpose" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_rate" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_cllasss" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_category" runat="server" Visible="false"></asp:Literal>
                            <asp:Literal ID="lit_dscId" runat="server" Visible="false"></asp:Literal>
                        </div>
                        <div class="col-lg-4 p-0 float-left"></div>
                    </div>

                    <!--TAB CONTENT---->
                    <div class="col-lg-12 mt-5 mb-5">
                        <div class="col-lg-12 float-left">
                            <ul class="nav nav-tabs">
				                <li class="nav-item tab">	                     
                                    <asp:LinkButton ID="lnk_individul" runat="server" class="nav-link  tablinks l-b"  data-toggle="tab" href="#Individual-Proprietorship" OnClick="lnk_individul_Click" >Individual/Propritership</asp:LinkButton>
				                </li>
				                <li class="nav-item tab">
				                    <asp:LinkButton ID="lnk_partnetship" runat="server" class="nav-link tablinks" data-toggle="tab" href="#Partnership-LLP" OnClick="lnk_partnetship_Click">Partnership/LLP</asp:LinkButton>
				                </li>
				                <li class="nav-item tab">
				                    <asp:LinkButton ID="lnk_company" runat="server" class="nav-link tablinks r-b" data-toggle="tab" href="#Company" OnClick="lnk_company_Click">Company</asp:LinkButton>
				                </li>
			                </ul>
                        </div>
                        	
                        <div class="tab-content">
                            
                            <div id="Individual-Proprietorship" class="tabcontent tab-pane"><!--Individual-Proprietorship-->                           	
                                <div class="col-lg-12 float-left mt-4">
                                    <div class="col-lg-6 p-0 float-left">
                                        <div class="col-lg-5 p-0 float-left">
                                            <div class="form-group">
                                                <label for="Name">Name:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_nameIndivi" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">PAN Number:</label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_panNoIndivi" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Aadhar Number:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_adharNoIndivi" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Mobile Number:</label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_mobileIndivi" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">GSTIN Number:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_gstinIndivi" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Email Address:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_emailIndivi" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                                                           
                                </div>
                                                                    
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                            <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Upload PAN Card:</label>
                                                </div>
                                            </div>
                                               
                                            <div class="col-lg-7 p-0" style="float:left;">
                                                <div class="form-group">                                
                                                    <asp:FileUpload ID="uplf_panCardIndivi" runat="server" class="form-control fld file" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Upload Aadhar:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_adharCardIndivi" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>                   
                                </div>

                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                            <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Upload Photo:</label>
                                                </div>
                                            </div>
                                               
                                            <div class="col-lg-7 p-0" style="float:left;">
                                                <div class="form-group">                                
                                                    <asp:FileUpload ID="uplf_nameIndivi" runat="server" class="form-control fld file" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                                
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                </div>
                                        </div>
                                    </div>                   
                                </div>
                                                          
                                <div class="col-lg-12">
                                    <span style="color:red">
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </span>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                        <asp:CheckBox ID="chk_indivi" runat="server" class="form-check-input" value="" />
                                        I agree to use my above information to create a DGFT account with Parsh Digital Signature. I will retain the above login details confidential and do not share with anyone. I agree to the terms of Subscriber Agreement, which shall be eSigned on successful account creation.
                                        </label>
                                    </div>
                                </div>
                                      
                                <div class="col-lg-12">
                                    <div class="form-group">                                
                                        <asp:Button ID="btn_submitIndivi" runat="server" OnClientClick="return validateIndivi();" Text="Continue" class="btning btn-primary" OnClick="btn_submitIndivi_Click" />
                                    </div>                                              
                                </div>                               
                                 
                            </div>
                            <!--Individual-Proprietorship x close-->
                                             
                            <div id="Partnership-LLP" class="tabcontent tab-pane fade"><!--Partnership-LLP-->                          	
                                <div class="col-lg-12 float-left mt-4">
                                    <div class="col-lg-6 p-0 float-left">
                                        <div class="col-lg-5 p-0 float-left">
                                            <div class="form-group">
                                            <label for="Name">Name:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_namePart" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                            <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">PAN Number:</label>
                                                </div>
                                            </div>
                                               
                                            <div class="col-lg-7 p-0" style="float:left;">
                                                <div class="form-group">                                
                                                    <asp:TextBox ID="txt_panNoPart" runat="server" class="form-control fld"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Aadhar Number:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_adharNoPart" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Mobile Number:</label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_mobilePart" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">GSTIN Number:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_gstinPart" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Certificate Of Incorporate No :</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_certiIncorpPart" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                                                                                                 
                                </div>
                                   
                                <div class="col-lg-12">                                                                              
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Email Address:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_emailPart" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Upload Photo:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_namePart" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>                                                           
                                </div>                                   
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Upload PAN Card:</label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_panCardPart" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Upload Aadhar:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_adharCardPart" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Certificate Of Incorporate: </label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_certiIncorPart" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">&nbsp; </label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                &nbsp;
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                                          
                                <div class="col-lg-12">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:CheckBox ID="chk_part" runat="server" class="form-check-input" value="" />
                                            I agree to use my above information to create a DGFT account with Parsh Digital Signature. I will retain the above login details confidential and do not share with anyone. I agree to the terms of Subscriber Agreement, which shall be eSigned on successful account creation.
                                        </label>
                                    </div>
                                </div>
                                      
                                <div class="col-lg-12">
                                    <div class="form-group">                                
                                        <asp:Button ID="btn_submitPart" runat="server" OnClientClick="return validatePart();" Text="Continue" class="btning btn-primary" OnClick="btn_submitPart_Click" />
                                    </div>                                              
                                </div> 
                              
                            </div>
                            <!--Partnership-LLP x close-->
                            
                            <div id="Company" class="tabcontent tab-pane fade">

                              	<div class="col-lg-12 float-left mt-4">
                                    <div class="col-lg-6 p-0 float-left">
                                        <div class="col-lg-5 p-0 float-left">
                                            <div class="form-group">
                                            <label for="Name">Name:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_nameComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">PAN Number:</label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_panNoComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Aadhar Number:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_adharNoComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Mobile Number:</label>
                                            </div>
                                        </div>
                                               
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_mobileComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">GSTIN Number:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_gstinComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Certificate Of Incorporate No :</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_certiIncorpComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                          
                                                           
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Company PAN No. :</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_compPanNoComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Director PAN No. :</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_directorPanNoComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>                                       
                                                           
                                </div>
                                   
                                <div class="col-lg-12">                                                                              
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Email Address:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:TextBox ID="txt_emailComp" runat="server" class="form-control fld"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Upload Photo:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_nameComp" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>
                                                           
                                </div>                                   
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                            <div class="col-lg-5 p-0" style="float:left;">
                                                <div class="form-group">
                                                    <label for="Name">Upload PAN Card:</label>
                                                </div>
                                            </div>
                                               
                                            <div class="col-lg-7 p-0" style="float:left;">
                                                <div class="form-group">                                
                                                    <asp:FileUpload ID="uplf_panCardComp" runat="server" class="form-control fld file" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">Upload Aadhar:</label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_adharCardComp" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                            <div class="col-lg-5 p-0" style="float:left;">
                                                <div class="form-group">
                                                    <label for="Name"> Upload Certificate Of Incorporate: </label>
                                                </div>
                                            </div>
                                               
                                            <div class="col-lg-7 p-0" style="float:left;">
                                                <div class="form-group">                                
                                                    <asp:FileUpload ID="uplf_certiIncorpComp" runat="server" class="form-control fld file" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                        <div class="form-group">
                                            <label for="Name">Upload Company PAN:  </label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                <asp:FileUpload ID="uplf_compPanCardComp" runat="server" class="form-control fld file" />
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                   
                                <div class="col-lg-12">
                                    <div class="col-lg-6 p-0" style="float:left;">
                                            <div class="col-lg-5 p-0" style="float:left;">
                                                <div class="form-group">
                                                    <label for="Name">Upload Directo PAN: </label>
                                                </div>
                                            </div>
                                               
                                            <div class="col-lg-7 p-0" style="float:left;">
                                                <div class="form-group">                                
                                                    <asp:FileUpload ID="uplf_directorPanCardComp" runat="server" class="form-control fld file" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                    <div class="col-lg-6 p-0" style="float:left;">
                                        <div class="col-lg-5 p-0" style="float:left;">
                                            <div class="form-group">
                                                <label for="Name">&nbsp; </label>
                                            </div>
                                        </div>
                                           
                                        <div class="col-lg-7 p-0" style="float:left;">
                                            <div class="form-group">                                
                                                &nbsp;
                                            </div>
                                        </div>
                                    </div>                   
                                </div>
                                                          
                                <div class="col-lg-12">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:CheckBox ID="chk_comp" runat="server" class="form-check-input" value="" />
                                            I agree to use my above information to create a DGFT account with Parsh Digital Signature. I will retain the above login details confidential and do not share with anyone. I agree to the terms of Subscriber Agreement, which shall be eSigned on successful account creation.
                                        </label>
                                    </div>
                                    </div>
                                      
                                <div class="col-lg-12">
                                    <div class="form-group">                                
                                        <asp:Button ID="btn_submitComp" runat="server" OnClientClick="return validateComp();" Text="Continue" class="btning btn-primary" OnClick="btn_submitComp_Click" />                                     
                                    </div>                                              
                                </div> 
                                
                            </div>
                            <!--Company x close-->
                            
                         </div> 
                     </div>
                    <!--TAB CONTENT CLOSE--->		
                </div>
				<div class="col-xl-2"></div>
            </div>
        </div>
    </div>

    <script type="text/javascript"> 

      function validateIndivi()
      {
            var nameIndivi = document.getElementById('<%= txt_nameIndivi.ClientID %>').value;
            var pan_noIndivi = document.getElementById('<%= txt_panNoIndivi.ClientID %>').value;
            var adhar_noIndivi = document.getElementById('<%= txt_adharNoIndivi.ClientID %>').value;
            var mobileIndivi = document.getElementById('<%= txt_mobileIndivi.ClientID %>').value
            var emailIndivi = document.getElementById('<%= txt_emailIndivi.ClientID %>').value
            var chkIndivi = document.getElementById('<%=chk_indivi.ClientID%>').checked;

            if (nameIndivi == "") {
                alert("Enter Name");
                document.getElementById('<%= txt_nameIndivi.ClientID %>').focus();
                return false;
            }
            else {
                if (pan_noIndivi == "")
                {
                    alert("Enter Pan No.");
                    document.getElementById('<%= txt_panNoIndivi.ClientID %>').focus();
                    return false;
                }
                else
                {
                    if (adhar_noIndivi == "")
                    {
                        alert("Enter Aadhar No.");
                        document.getElementById('<%= txt_adharNoIndivi.ClientID %>').focus();
                        return false;
                    }
                    else
                    {
                        if (mobileIndivi == "")
                        {
                            alert("Enter Mobile No.");
                            document.getElementById('<%= txt_mobileIndivi.ClientID %>').focus();
                            return false;
                        }
                        else
                        {
                            var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                            if (emailIndivi == null || emailIndivi == "" || !pattern.test(emailIndivi))
                            {
                                alert("Invalid Email Address");
                                document.getElementById('<%= txt_emailIndivi.ClientID %>').focus();
                                return false;
                            }
                            else
                            {
                                if (chkIndivi != true)
                                {
                                    alert("Please check 'I Agree'");
                                    return false;
                                }
                                else
                                {
                                    return true;
                                }  
                            }
                        }
                    }
                }
            }
      }

      function validatePart()
      {
            var namePart = document.getElementById('<%= txt_namePart.ClientID %>').value;
            var pan_noPart = document.getElementById('<%= txt_panNoPart.ClientID %>').value;
            var adhar_noPart = document.getElementById('<%= txt_adharNoPart.ClientID %>').value;
            var mobilePart = document.getElementById('<%= txt_mobilePart.ClientID %>').value
            var emailPart = document.getElementById('<%= txt_emailPart.ClientID %>').value;
            var chkPart = document.getElementById('<%=chk_part.ClientID%>').checked;

          if (namePart == "")
          {
            alert("Enter Name");
            document.getElementById('<%= txt_namePart.ClientID %>').focus();
            return false;
          }
          else
          {
              if (pan_noPart == "")
              {
                alert("Enter Pan No.");
                document.getElementById('<%= txt_panNoPart.ClientID %>').focus();
                return false;
              }
              else
              {
                  if (adhar_noPart == "")
                  {
                    alert("Enter Aadhar No.");
                    document.getElementById('<%= txt_adharNoPart.ClientID %>').focus();
                    return false;
                  }
                  else
                  {
                      if (mobilePart == "")
                      {
                        alert("Enter Mobile No.");
                        document.getElementById('<%= txt_mobilePart.ClientID %>').focus();
                        return false;
                      }
                    else
                      {
                            var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                            if (emailPart == null || emailPart == "" || !pattern.test(emailPart))
                            {
                                alert("Invalid Email Address");
                                document.getElementById('<%= txt_emailPart.ClientID %>').focus();
                                    return false;
                            }
                            else
                            {
                                if (chkPart != true)
                                {
                                    alert("Please check 'I Agree'");
                                    return false;
                                }
                                else
                                {
                                    return true;
                                }   
                            }
                      }
                  }
              }
          }
      }

      function validateComp()
      {
            var nameComp = document.getElementById('<%= txt_nameComp.ClientID %>').value;
            var pan_noComp = document.getElementById('<%= txt_panNoComp.ClientID %>').value;
            var adhar_noComp = document.getElementById('<%= txt_adharNoComp.ClientID %>').value;
            var mobileComp = document.getElementById('<%= txt_mobileComp.ClientID %>').value
            var emailComp = document.getElementById('<%= txt_emailComp.ClientID %>').value;
            var chkComp = document.getElementById('<%=chk_comp.ClientID%>').checked;

          if (nameComp == "")
          {
                alert("Enter Name");
                document.getElementById('<%= txt_nameComp.ClientID %>').focus();
                return false;
          }
          else
          {
              if (pan_noComp == "")
              {
                alert("Enter Pan No.");
                document.getElementById('<%= txt_panNoComp.ClientID %>').focus();
                return false;
              }
              else
              {
                  if (adhar_noComp == "")
                  {
                    alert("Enter Aadhar No.");
                    document.getElementById('<%= txt_adharNoComp.ClientID %>').focus();
                    return false;
                  }
                  else
                  {
                      if (mobileComp == "")
                      {
                        alert("Enter Mobile No.");
                        document.getElementById('<%= txt_mobileComp.ClientID %>').focus();
                        return false;
                      }
                      else
                      {
                        var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                          if (emailComp == null || emailComp == "" || !pattern.test(emailComp))
                          {
                                alert("Invalid Email Address");
                                document.getElementById('<%= txt_emailComp.ClientID %>').focus();
                                return false;
                          }
                          else
                          {
                              if (chkComp != true)
                              {
                                  alert("Please check 'I Agree'");
                                  return false;
                              }
                              else
                              {
                                  return true;
                              }   
                          }
                      }
                  }
              }
          }
      }

    </script>

</asp:Content>
