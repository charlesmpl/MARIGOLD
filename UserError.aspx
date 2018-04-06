<%@ Page Language="vb" ContentType="text/html" ResponseEncoding="iso-8859-1" CodeBehind="usererror.aspx.vb" AutoEventWireup="false"  %>

<%--Inherits="mpl.Grand.UserError"--%>

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
<body>
<form id="usererror" class="form-inline" name="usererror"  runat="server">
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
                   
                  
                    <div class="form_field">

                    <p id="msgPara" runat="server" style="padding-top:40px; padding-bottom:20px;">asdddddddddddddddddddd</p>
                   
                    <div>
                        <asp:Button id="butBack2Login" runat="server" Text="Back to Login Page" class="btn btn-default"></asp:Button>
                    </div>
                  
                      
                     </div>
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

    
 </form>
</body>
</html>
