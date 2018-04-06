<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Userinfo.aspx.vb" Inherits="mpl.Grand.Userinfo" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title runat="server" id="PageTitle"></title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <link href="css/grand.css" rel="stylesheet" type="text/css" />
    <link href="fonts/fonts.css" rel="stylesheet" type="text/css" />
     <!--[if lt IE 9]>     
      <script src="js/html5.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <!-- DONT DELETE COMMENTED ITEMS -->
</head>
<body onload="start();">
 <form id="frmPostlogin" name="frmPostlogin" method="post" runat="server">
      <div id="wrapper">
    <div id="menu">
      <img src="images/menu_icon.png" />Menu
    </div>
        <div class="container-fluid  quick_links">
            <div class="col-md-8">
            </div>
           <!-- #include file = "header.html" -->
        </div>
        <div class="container-fluid bg1">
            <div class="row">
                <div class="col-md-3 logo">
                    <img src="images/logo.jpg" />
                </div>
                <div class="col-md-8 contents">

                              
                <div style="color:White; margin-top:30px;">
                    Connection Status
                </div>
                <div id="txtlogout" style="color:White; margin-top:20px;">
                    CONNECTED
                </div>
                <div style="margin-top:20px;color:White;">
                    <strong>
                        <div id="CH_dtimer1_digits">
                        </div>
                    </strong>
                </div>
                <div>
                </div>
                <div style="margin-top:20px;color:White;">
                    Bytes Send &amp; Received</div>
                <strong>
                    <div id="totbytes"  style="margin-top:20px;color:White;">
                    </div>
                </strong>
                <div>
                </div>
                <div id="clock">
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                        width="100" height="100">
                        <param name="movie" value="Images/timer.swf" />
                        <param name="quality" value="high" />
                        <param name="BGCOLOR" value="#787877" />
                        <embed src="Images/timer.swf" width="100"
                            type="application/x-shockwave-flash" height="100" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" bgcolor="#787877" ></embed>
                    </object>
                </div>
           
          
                </span>
                  <div>


                <INPUT id="hdusertype" type="hidden" name="hdusertype" runat="server">
                <INPUT id="hdgrcid" type="hidden" name="hdgrcid" runat="server">
                <INPUT id="hdMAC" type="hidden" name="hdMAC" runat="server">
                <INPUT id="hdRegPg" type="hidden" name="hdRegPg" runat="server">
                <INPUT id="hdRoomNo" type="hidden" name="hdRoomNo" runat="server">                  </div>
                      
                     
                </div>
            </div>
        </div>
        <div class="footer">
            <span>Copyright © 2015 Microsense Private Limited. All rights reserved </span>
            <img src="images/mifi_logo.png" />
        </div>
    </div>
    

    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>

    <script src="js/layout.min.js" type="text/javascript"></script>

    <script src="js/jquery.backstretch.min.js" type="text/javascript"></script>

    <script src="js/customRadioCheck.js" type="text/javascript"></script>

    <script type="text/javascript">

        $(function () {

            $.backstretch("images/bg1.jpg");

            $('#menu').click(function () {

                $('.quick_links').slideToggle();

            });

        });
    
    </script>

    <script language="javascript" type="text/javascript">
			var time, timerID, clockticks,balsecs
			var hh = 0;
			var mm = 0;
			var ss = 0;
					
	
			function start(){
						
				var frm = document.frmPostlogin
				var strurl = frm.hdRegPg.value; 
				//var strurl = "http://www.theparkhotels.com"
				window.open(strurl);
				//myWindow = window.open(strurl, "newwindow") 

				GetByteCount();
				time = <%=Plantime%> - 1 
				showtime()
			}
	
			function showtime(){
				clockticks = time 
			
			//Remaining hrs alert
			if(clockticks == 300){
			var t1 = new Date();
				alert("You Have 5 minutes Left");
			var t2 = new Date();
				rt = Math.round((t2 - t1)/1000);
				if (time > rt){
					time = time - rt;
					clockticks = time;
				}
				else
					time = 0;	
				}
				//get bytes count from nomadix

				if(clockticks%60 == 0)
					GetByteCount()
				//Calculate hours
				if (clockticks >= 3600){
					hh = clockticks/3600
					balsecs= clockticks%3600
					hh= Math.floor(hh)
					clockticks = balsecs	
				}      
				else{hh=0	}
				//Calculate Minutes
				if(clockticks >= 60){
					mm = clockticks/60
					balsecs = clockticks%60
					mm = Math.floor(mm)
					clockticks = balsecs
				}
				else {mm=0 }
				//Calculate Seconds
				ss = Math.floor(clockticks)
			
				if(time > 0) 
					document.getElementById("CH_dtimer1_digits").innerHTML = "BalanceTime Left  <br> " +hh + " Hrs: " + mm + " Min: " + ss + " Sec"
				if(time <= 0)
					document.getElementById("CH_dtimer1_digits").innerHTML ="You have been logged out or your Account Expired"
				
				timerID = setTimeout("showtime()",1000)
				time--;	
			}
		
		function createRequestObject() {
			var request_o; //declare the variable to hold the object.
			
			if (window.XMLHttpRequest){
				// If IE7, Mozilla, Safari, etc: Use native object
				request_o = new XMLHttpRequest()
			}
			else{
				if (window.ActiveXObject){
				// ...otherwise, use the ActiveX control for IE5.x and IE6
				request_o = new ActiveXObject("Microsoft.XMLHTTP");
				}
			}		
			return request_o; //return the object
		}
			//Bytes count program
			function GetByteCount(){
				var sd_data, URL, XMLObj
				var frm = document.frmPostlogin
				XMLObj = createRequestObject();
				/*if (window.ActiveXObject)
					XMLObj = new ActiveXObject("Microsoft.XMLHTTP");
				else if (window.XMLHttpRequest)
					XMLObj = new XMLHttpRequest();*/
				sd_data = "MA=" + frm.hdMAC.value + "&RN=" + frm.hdRoomNo.value;
				URL = "SndRevBytes.aspx?" + sd_data
				XMLObj.open("GET",URL,true);
				XMLObj.onreadystatechange = function() 
				{
					document.getElementById("totbytes").innerHTML = "Loading...";
					if (XMLObj.readyState == 4)
						document.getElementById("totbytes").innerHTML = XMLObj.responseText;
				}				
				XMLObj.send(null);
			}
    </script>

    <script language="javascript" type="text/javascript">
        function bookmark() {

            var browser = navigator.appName; //find the browser name
            if (browser == "Microsoft Internet Explorer")
                window.external.AddFavorite(location.href, document.title)

            else
                alert("BookMark this Page Please press Ctrl+D");

        }
        function Click_Logout() {


            var frm = document.frmPostlogin
            if (document.frmPostlogin.hdMAC.value != "") {
                if (document.frmPostlogin.hidlogout.value == 0) {
                    clearTimeout(timerID)
                    XMLObj2 = createRequestObject();
                    var sd_data, URL
                    sd_data = "MA=" + frm.hdMAC.value + "&RN=" + frm.hdRoomNo.value + "&Grcid=" + frm.hdgrcid.value + "&action=update";
                    URL = "logout.aspx?" + sd_data;
                    XMLObj2.open("GET", URL, true);
                    XMLObj2.onreadystatechange = function () {
                        document.getElementById("txtlogout").innerHTML = "Loading...";
                        if (XMLObj2.readyState == 4) {
                            alert(XMLObj2.responseText);
                            document.getElementById("txtlogout").innerHTML = XMLObj2.responseText;
                            deletemac();
                            //document.getElementById("clock").className="hide";
                        }
                    }
                    XMLObj2.send(null);
                    document.frmPostlogin.hidlogout.value = 1

                }
            }
        }

        function deletemac() {
            var frm = document.frmPostlogin
            XMLObj1 = createRequestObject();
            /*if(window.ActiveXObject)
            var XMLObj1 = new ActiveXObject("Microsoft.XMLHTTP");
            else if (window.XMLHttpRequest)
            var XMLObj1 = new XMLHttpRequest(); */
            var sd_data, URL
            sd_data = "MA=" + frm.hdMAC.value + "&RN=" + frm.hdRoomNo.value + "&action=delete";
            URL = "logout.aspx?" + sd_data;
            XMLObj1.open("GET", URL, true);
            XMLObj1.send(null);

        }



        function URLRedirect() {


            var mobileOS;    // will either be iOS, Android or unknown
            var mobileOSver; // this is a string, use Number(mobileOSver) to convert


            var ua = navigator.userAgent;
            var uaindex;

            // determine OS
            if (ua.match(/Windows Phone /i)) {

                //    mobileOS = 'Windows';
                //   uaindex = ua.indexOf('Windows Phone ');
                document.getElementById('HyperLink2').click();

            }
            else if (ua.match(/iPad/i) || ua.match(/iPhone/i)) {
                //  mobileOS = 'iOS';
                //   uaindex = ua.indexOf('OS ');
                document.getElementById('HyperLink3').click();

            }
            else if (ua.match(/Android/i)) {
                //   mobileOS = 'Android';
                //  uaindex = ua.indexOf('Android ');

                document.getElementById('HyperLink1').click();
            }
            else {
                document.getElementById('HyperLink2').click();
            }


        }
		
    </script>


    
 </form>
</body>
</html>
