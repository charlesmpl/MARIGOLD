<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlanSelection.aspx.vb" Inherits="mpl.Grand.PlanSelection" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title runat="server" id="PageTitle"></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script language="JavaScript" src="validation.js"></script>
<link href="pride.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>

	 <!--[if lte IE 6]>
        <link rel="stylesheet" type="text/css" href="png_fix.css" />        			
      <![endif]-->
	  
<!--[if IE]>

<script type="text/javascript" src="js/DD_roundies_0.0.2a-min.js"></script>

<script type="text/javascript">
  DD_roundies.addRule('#main_wrapper', '10px');
</script>
<![endif]-->



</head>

<body>
<form id="frmmifilogin" name="form1" onsubmit="javascript:return validate(this);" runat="server">
<div id="background">
    <img src="images/bg1.jpg" alt="" class="stretch" />
</div>

<p>&nbsp;</p>

<div id="main_wrapper">

<div id="header">
	
	<img src="images/pride_logo.jpg" alt="" class="logo" />
	<div class="right_header">
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="477" height="219">
        <param name="movie" value="images/banner1.swf" />
        <param name="quality" value="high" />
        <embed src="images/banner1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="477" height="219"></embed>
      </object>	
    </div>
</div>
<div class="spacer"></div>
<div class="contents">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="48" style="padding-left:10px; vertical-align:top;" class="left_panel">
	
	<a href="support.aspx" target="support"><img src="images/cal_icon.png" width="32" height="34" style="margin-top:50px; " /></a>
	<img src="images/serv_icon.png" width="39" height="52"  style="margin-top:10px;"/>	
	
	</td>
    <td style="vertical-align:top; padding:2px; ">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left">
		<img src="images/login_header.jpg" width="701" height="30" />
		</td>
      </tr>
      <tr>
        <td height="200" align="center" style="background:#FFF2E3; vertical-align:middle; ">
				<table cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">


												<tr>
                                                
													<td vAlign="top" align="center" width="50%" height="150">
														<table height="122" cellSpacing="2" cellPadding="1" width="470" border="0">
															  <tr>
                                                            <td colspan="3">&nbsp;</td>
                                                            </tr>
                                                             <tr>
                                                            <td colspan="3" align="center">
                                                               <span style="font-weight:bold;" > <asp:Label ID="lblfreemsg" runat="server" 
                                                                    ForeColor="#B86E06"></asp:Label></span></td>
                                                            </tr>
                                                             <tr>
                                                            <td colspan="3">&nbsp;</td>
                                                            </tr>
                                                            <tr>
																<td align="center" colspan="3" style="font-weight:bold;" >Please select a plan</td>
															</tr>
                                                              <tr>
                                                            <td colspan="3">&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="3"><asp:radiobuttonlist id="rdoplan" runat="server"></asp:radiobuttonlist></td>
                                                            </tr>
                                                            <tr>
                                                            <td colspan="3">&nbsp;</td>
                                                            </tr>
                                                             <tr>
                                                            <td colspan="3" align="center"><IMG height="12" src="images/bullat.jpg" width="12"> Taxes Extra as Applicable</td>
                                                            </tr>
															
															<tr><td>&nbsp;</td></tr>
															<tr><td colspan="3" align="center"><asp:imagebutton id="imgbtnlogin" runat="server" BorderWidth="0" ImageUrl="images/login_btn.jpg"></asp:imagebutton>
																	<input type="hidden" value="0" name="hdbutclick"></td></tr>
														
															
														</table>
													</td>
											
												</tr>
												
											
											</table>
		</td>
		
		    </tr>
      <tr>
        <td align="center" style="vertical-align:middle; ">
		<div class="footer"><img src="images/footer_logo.png" width="175" height="18" /></div>
		</td>
      </tr>
		  </table>
	</td>
    </tr>
</table>
	
  </div>  
</div>
<script language="javascript">

    function validate(frm) {


        if (parseInt(frm.hdbutclick.value) != 0)
            return false
        if (frm.cmbplans.value == "-1") { alert('Please select a Plan'); return false; }

        frm.hdbutclick.value = 1
    }

 
			</script>
</form>
</body>
</html>
