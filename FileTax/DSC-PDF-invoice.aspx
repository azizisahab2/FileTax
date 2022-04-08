<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DSC-PDF-invoice.aspx.cs" Inherits="FileTax.DSC_PDF_invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Invoice</title>
	<style>
	body {
	  background: rgb(204,204,204);
	  font-family:Arial, Helvetica, sans-serif;
	}
	page {
	  background: white;
	  display: block;
	  margin: 0 auto;
	  margin-bottom: 0.5cm;
	  box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
	}
	page[size="A4"] {  
	  width: 21cm;
	  height: 29.7cm; 
	}

	@media print {
	  body, page {
		margin: 0;
		box-shadow: 0;
	  }
	}

	table{
		width:100%;
		float:left;
	
		}
	.th{
	
		text-align:center;
		font-weight:600;
		font-size:13px;
		line-height:26px;
		padding:2px;
	}

	.td{ height:12cm; }
	.sub-th{
		padding:2px 2px 2px 10px;
		font-size:12px;
		text-align:center;
		}
	.bod-lft{
		border-right:1px solid #666;}
	.bod-bot{
		border-bottom:1px solid #666;}
	.no-bod{
		border-right:0px}
	.text-aria{
		width:100%; 
		height:12cm; 
		float:left; 
		top:0;
		line-height:20px;	
		}
	.aln{text-align:left;}
	.frm{
		width: 19cm; 
		height: 29cm; 
		margin:0 auto;
		}
	.sub-frm{
		width:19cm; 
		height:28cm; 
		border:1px solid #000; 
		float:left; 
		margin-top:0.8cm;
		}
	.f-1{
		width:95%; 
		float:left; 
		padding:5px 15px 5px 15px;
		}
	.L-1{
		float:left; 
		font-size:12px;
		}
	.R-1{
		float:right; 
		font-size:12px;
		}
	.title{
		width:95%; 
		float:left; 
		padding:0px; 
		font-size:36px; 
		text-align:center; 
		font-weight:bold; 
		font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif;
		}
	.sub-tit{
		width:100%; 
		float:left; 
		padding:5px 0 10px 0; 
		font-size:14px; 
		text-align:center;
		}
	.invo-title{
		width:100%; 
		float:left; 
		font-size:18px; 
		padding:5px 0 5px 0; 
		font-weight:bold; 
		text-align:center; 
		border-top:1px solid #000; 
		border-bottom:1px solid #000;
		 }
	.invo-no-da{
		width:100%; 
		float:left; 
		font-size:16px; 
		padding:15px 0 15px 0; 
		text-align:center; 
		border-bottom:1px solid #000;
		}
	.t-invo{
		float:left; 
		font-size:12px; 
		padding-left:10px;
		}
	.d-invo{
		float:right; 
		font-size:12px; 
		padding-right:10px
		}
	.bil-ship{
		width:100%; 
		float:left; 
		font-size:18px;  
		font-weight:bold; 
		border-bottom:1px solid #000;
		}
	.bill{
		width:47%; 
		float:left; 
		text-align:left; 
		font-size:16px; 
		font-weight:bold; 
		padding:10px; 
		border-right:1px solid #000;
		}
	.ship{
		width:47%; 
		float:left; 
		text-align:left; 
		font-size:16px; 
		font-weight:bold; 
		padding:10px;
		}
	.bil-detail{
		width:100%; 
		float:left; 
		border-bottom:1px solid #000;
		}
	.l-frame{
		width:47%;
		height:28vh; 
		float:left; 
		text-align:left; 
		font-size:12px; 
		line-height:20px;  
		padding:10px; 
		border-right:1px solid #000;
		}
	.l-frame-2{
		width:47%; 
		float:left; 
		text-align:left; 
		font-size:12px; 
		line-height:20px;  
		padding:10px;
		}
	.td-frame-1{
		width:100%; 
		float:left; 
		font-size:16px; 
		padding:5px 0 5px 0;  
		font-weight:bold;
		}
	.td-frame-2{
		width:100%; 
		float:left; 
		font-size:16px; 
		padding:5px 0 5px 0;  
		font-weight:bold;
		}
	.term{
		width:40%; 
		height:2.3cm; 
		float:left; 
		text-align:left; 
		font-size:11px; 
		line-height:20px;  
		padding:10px; 
		border-right:1px solid #000;
		}
	.signa{
		width:50%; 
		height:2.3cm; 
		float:left; 
		text-align: 
		center; font-size:14px; 
		line-height:20px;  
		padding:10px;
		}
	
	
		.cont-frame{
		width:40%; 
		float:left; 
		margin:1%;
		border:1px solid #CCC; 
		padding:10px; 
		border-radius:5px;
		}
	table{
		width:100%; 
		margin:0 auto;
	
		}
	.th{
		background:#CCC;
		text-align:center;
		font-weight:bold;
		font-size:16px;
		line-height:26px;
		padding:2px;
	}
	.sub-th{
		padding:2px 2px 2px 10px;
		font-size:12px;
		text-align:center;
		}
	.bod-lft{
		border-right:1px solid #666;}
	.bod-bot{
		border-bottom:1px solid #666;}
	.bod-top{
		border-top:1px solid #666;}
	.no-bod{
		border-right:0px}
	.invoice-box{
		width:100%; 
		float:left;
		padding:10px;
		margin:0;
	}

	.text-2{
		width:100%; 
		float:left; 
		font-size:18px; 
		color:#000; 
		font-weight:bold; 
		padding:20px 0 0 0;
		}
	.txt-1{
		width:100%; 
		float:left;
		font-size:12px; 
		color:#333;  
		padding:5px 0 0 0;
		}
	.txt-1 strong{
		color:#000;}


	.no-bod{
		border-right:0px}
	.no{width:5%; float:left; padding:10px;}
	.p-par{width:90%; float:left; padding:5px;
	font-size:14px;
		font-family:Arial, Helvetica, sans-serif;
	
		line-height:22px;}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        	<page size="A4">

	<div class="frm">
	<div class="sub-frm">
   	  <div class="f-1">
        	<div class="L-1"></div>    <div class="R-1">Mob:941596857452</div>
      </div>
      <div class="title"> <div class="top-freame"><img src="images/logo.png" /></div> </div>
      <div class="sub-tit">  3B, Ground Floor, Lane No. 2 Kahar Singh State,<br /> Saiyed-ul-ajaib Wesend Marg, New Delhi- 110030</div>
      <div class="invo-title">TAX INVOICE</div>
        
      
      
      <div class="bil-ship">
        	<div class="bill">Invoiced To:</div> 
            <div class="ship">Pay To: </div>   	
      </div>
        
      <div class="bil-detail">
        	<div class="l-frame">
            	<strong>Name:</strong>&nbsp;  		  <asp:Literal ID="lit_name" runat="server"></asp:Literal> <br />			
                <strong>Address:</strong> &nbsp;		<asp:Literal ID="lit_address" runat="server"></asp:Literal><br />		
                <strong>Phone:</strong>&nbsp;		 <asp:Literal ID="lit_phone" runat="server"></asp:Literal> <br />		
                <strong>GSTIN:</strong>&nbsp;         <asp:Literal ID="lit_gstin" runat="server"></asp:Literal> <br />
            </div> 
            <div class="l-frame-2">
            	<strong>Bank Account Name: </strong> &nbsp; 		  <asp:Literal ID="lit_acctHolderName" runat="server"></asp:Literal> <br />			
                <strong>Bank Account No: </strong>&nbsp; 		<asp:Literal ID="lit_accountNo" runat="server"></asp:Literal><br />		
                <strong>IFC Code: </strong>&nbsp;		 <asp:Literal ID="lit_ifcCode" runat="server"></asp:Literal><br />		
                <strong>Bank Name: </strong>&nbsp;         <asp:Literal ID="lit_bankName" runat="server"></asp:Literal><br />
                <strong>Branch: </strong> &nbsp;Saket Sect-2<br />
               <strong> City: </strong> &nbsp; New Delhi<br />
                <strong>Services Tax No: </strong> &nbsp; 4040AA135DF8899<br />
                <strong>GSTIN:</strong>&nbsp;  29ACAG12458DF3214<br />
            </div>   	
      </div>
      
      
      
      
      
      
      <table cellpadding="0" cellspacing="0" >
	
	<tr>
    	<td width="10%" class="th bod-lft bod-bot">Sl No.</td>
    	<td width="35%" class="th bod-lft bod-bot">Description </td>
        <td width="15%" class="th bod-lft bod-bot">HSN/SAC</td>
        <td width="20%" class="th bod-lft no-bod bod-bot"> Amount</td>
    </tr>
    <tr>
    	<td class="sub-th bod-bot bod-lft">1.</td>
    	<td class="sub-th bod-bot bod-lft">Govt Prescribed</td>
        <td class="sub-th bod-bot bod-lft"></td>
        <td class="sub-th bod-bot"> <asp:Literal ID="lit_govtPrescribAmt" runat="server"></asp:Literal></td>
    </tr>
    <tr>
    	<td class="sub-th bod-bot bod-lft">2.</td>
    	<td class="sub-th bod-lft bod-bot">Convenience Fees</td>
        <td class="sub-th bod-bot bod-lft">SAC: 00441480</td>
        <td class="sub-th bod-bot"> <asp:Literal ID="lit_convenienceFeeAmt" runat="server"></asp:Literal></td>
    </tr>
    <tr>
    	<td class="sub-th bod-bot bod-lft">3.</td>
    	<td class="sub-th bod-lft bod-bot">CGST</td>
        <td class="sub-th bod-bot bod-lft"></td>
        <td class="sub-th bod-bot"> <asp:Literal ID="lit_cgstAmt" runat="server"></asp:Literal></td>
    </tr>
    <tr>
    	<td class="sub-th bod-bot bod-lft">4.</td>
    	<td class="sub-th bod-lft bod-bot">SGST</td>
        <td class="sub-th bod-bot bod-lft"></td>
        <td class="sub-th bod-bot"> <asp:Literal ID="lit_sgstAmt" runat="server"></asp:Literal></td>
    </tr>
    
    <tr>
    	<td class="th bod-lft bod-bot"></td>
        <td class="th bod-lft bod-bot"></td>
        <td class="th bod-lft bod-bot" style="text-align:right;">Total</td>
        <td class="th bod-lft no-bod bod-bot"> <asp:Literal ID="lit_totalAmt" runat="server"></asp:Literal></td>
    </tr>
</table>

<div class="invoice-box">    
    <div class="top-freame">
    	<div class="txt-1">Amount Chargeable (in words)</div>
        <div class="text-2">INR Three Hundred Forty Nine</div>
    </div>
    <div class="top-freame"></div>
</div>

<table cellpadding="0" cellspacing="0" style="margin:30px auto; line-height:26px; font-size:12px;" >	
    <tr>
    	<td class="th bod-lft bod-bot bod-top" style="font-size:12px;">HSN/SAC</td>
    	
        <td class="th bod-lft bod-bot bod-top" style="font-size:12px;"> Taxable Amount</td>
        <td class="th bod-lft bod-bot bod-top" colspan="2" style="font-size:12px;"> CGST</td>
    	<!--<td class="th bod-lft bod-bot" style="font-size:12px;">SGST</td>-->
        <!--<td class="th bod-lft bod-bot" style="font-size:12px;"> Total Tax</td>-->
        <td class="th bod-lft bod-bot bod-top" colspan="2" style="font-size:12px;"> Total Tax</td>
        <td class="th bod-bot bod-top" style="font-size:12px;"> Total Tax Amount</td>
    </tr>
    <tr>
    	<td class="sub-th bod-lft bod-bot">SAC: 00441480</td>
        <td class="sub-th bod-lft bod-bot"><asp:Literal ID="lit_taxableAmt1" runat="server"></asp:Literal></td>
        <td class="sub-th bod-lft bod-bot"><asp:Literal ID="lit_cgstInPercent" runat="server"></asp:Literal></td>
        <td class="sub-th bod-lft bod-bot"><asp:Literal ID="lit_cgstAmt1" runat="server"></asp:Literal></td>
    	<td class="sub-th bod-lft bod-bot"><asp:Literal ID="lit_sgstInPercent" runat="server"></asp:Literal></td>
        <td class="sub-th bod-lft bod-bot"><asp:Literal ID="lit_sgstAmt2" runat="server"></asp:Literal></td>
        <td class="sub-th bod-bot"> <asp:Literal ID="lit_totTaxableAmt1" runat="server"></asp:Literal></td>
   
    </tr>
    <tr>
    	<td class="sub-th bod-lft bod-bot"><strong>Total</strong></td>
    	
        <td class="sub-th bod-bot bod-lft"> <strong><asp:Literal ID="lit_taxableAmt2" runat="server"></asp:Literal></strong></td>
        <td class="sub-th bod-bot bod-lft"><strong><asp:Literal ID="lit_totCgstInPercent" runat="server"></asp:Literal></strong></td>
        <td class="sub-th bod-bot bod-lft"><strong><asp:Literal ID="lit_totCgstAmt" runat="server"></asp:Literal></strong></td>
    	<td class="sub-th bod-bot  bod-lft"><strong><asp:Literal ID="lit_totSgstInPercent" runat="server"></asp:Literal></strong></td>
        <td class="sub-th bod-bot bod-lft"><strong><asp:Literal ID="lit_totSgstAmt" runat="server"></asp:Literal></strong></td>
        <td class="sub-th bod-bot"><strong> <asp:Literal ID="lit_totTaxableAmt2" runat="server"></asp:Literal></strong></td>
   
    </tr>
</table>

<div class="invoice-box">    
    <div class="top-freame">
    	<div class="txt-1">Tax Amount (in words)  :</div>
        <div class="txt-2"><strong>INR Thirty Six Hundred Ninety Paise</strong></div>
    </div>
    <div class="top-freame"></div>
</div>

<div class="invoice-box">
	   
    <div class="cont-frame" style="border:none;">
        
    </div>
     
     <div class="cont-frame" style="border:none;">
     	<div class="txt-1" style="text-align:right;"> Authorised Signatory </div>
        <div class="txt-2" style="text-align:right;"> <strong>For Parsh Tax Solutions LLP </strong></div>
        <div class="txt-1"> </div>
        <div class="txt-1" style="font-style:italic;"> </div>
    </div>
</div>

<div class="txt-1" style="text-align:center; margin-top:50px;">This is a Computer Generated Invoice</div>
        
	</div>
</div>
 
</page>



<!--  Instruction Sheet  --->

		 <page size="A4">

    <div class="frm">
        <div class="sub-frm">
   		 <div class="title" style="text-align:center; margin-top:20px; font-size:24px;">
				Instruction Sheet for Digital Signature Certificate
				<asp:Literal ID="lit_category" runat="server" Visible="true"></asp:Literal>
   		 </div>
    		<p style="padding:15px;">
            
            <div class="no"><asp:Literal ID="lit_srNo1" Text="1." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc1" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>
                 
            <div class="no"><asp:Literal ID="lit_srNo2" Text="2." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc2" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>  
            
            <div class="no"><asp:Literal ID="lit_srNo3" Text="3." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc3" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>   
            
            <div class="no"><asp:Literal ID="lit_srNo4" Text="4." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc4" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>   
            
            <div class="no"><asp:Literal ID="lit_srNo5" Text="5." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc5" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>   
            
            <div class="no"><asp:Literal ID="lit_srNo6" Text="6." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc6" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>
				
			<div class="no"><asp:Literal ID="lit_srNo7" Text="7." runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par">
				<asp:Literal ID="lit_instSheetDesc7" runat="server" Visible="false"></asp:Literal> <br /><br />
            </div>
            
            <div class="no"><asp:Literal ID="lit_srNo8" runat="server" Visible="false"></asp:Literal></div>
            <div class="p-par"> <span style="font-weight:600"> Mailing address to send application form :- </span> <br />
                    
                      AGGRIM SERVICES<br />
                      3 B, Ground Floor, Lane No. 2<br />
                      Kehar Singh State, Saidulajab<br />
                      Westend Marg, New Delhi-110030 <br /><br /></div> 
              
            <div class="no">&nbsp;</div>
            <div class="p-par">Phone:  +91 9643122658 (For post/courier purpose only. Please do not call on this number for queries 
                      related to processing of application).<br /><br /> 
                      <strong>For any queries, please write to us at:  info@indiapan.in</strong></div>           
               
                      
</p>
        </div>
    </div>

</page>
    </form>
</body>
</html>
