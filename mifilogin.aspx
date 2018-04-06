<%@ Page Language="vb" ContentType="text/html" ResponseEncoding="iso-8859-1" CodeBehind="mifilogin.aspx.vb"
    AutoEventWireup="false"  %> <%--Inherits="mpl.Grand.Mifilogin"--%>


<!DOCTYPE html>
<html lang="en">
<head>
    <title runat="server" id="PageTitle"></title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <link href="css/sliders.css" rel="stylesheet" type="text/css" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <link href="css/grand.css" rel="stylesheet" type="text/css" />
    <link href="fonts/fonts.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" src="validation.js" type="text/javascript"></script>

    <link href="popup/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>     
      <script src="js/html5.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <!-- DONT DELETE COMMENTED ITEMS -->
</head>
<body>
    <form class="form-inline" name="form1" onsubmit="javascript:return validate(this);"
    runat="server">
    <div id="slides">
        <div class="slides-container">
            <img src="images/banner1.jpg" alt=" ">
            <img src="images/banner2.jpg" alt=" ">
            <img src="images/banner3.jpg" alt=" ">
            <img src="images/banner4.jpg" alt=" ">
            <img src="images/banner5.jpg" alt=" ">
            <img src="images/banner6.jpg" alt=" ">
        </div>
        <nav class="slides-navigation">
          <a href="#" class="next">Next</a>
          <a href="#" class="prev">Previous</a>
        </nav>
    </div>
    <%--<div id="wrapper">--%>
        <%--<div id="menu">
            <img src="images/menu_icon.png" />Menu
        </div>--%>
        <div class="container-fluid  quick_links">
            <div class="col-md-8 logo1">
                <img src="images/logo.png" />
            </div>
            <div class="col-md-4">
                <!-- #include file = "header.html" -->
            </div>
        </div>
        <div class="container-fluid bg1">
            <div class="row">
                <div class="col-md-3 contents">
                    <h1>
                        <img src="images/wifi_hdr.png" />
                    </h1>
                    <p>
                        Please do read and accept the <a target="terms" href="terms.html" class="fancybox fancybox.iframe">
                            Terms and conditions</a> before log on to this services.
                    </p>
                    <div class="iagree">
                        <label>
                            <asp:CheckBox ID="chkagree" runat="server" Text="I Agree"></asp:CheckBox></label>
                    </div>
                    <div class="form_field">
                        <div class="form-group">
                            <asp:TextBox ID="txtlastname" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                            <!-- <input type="text" class="form-control" id="exampleInputName2" placeholder="User ID"> -->
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtregcode" class="form-control" placeholder="Registration Code"
                                runat="server"></asp:TextBox>
                            <!--   <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Password"> -->
                        </div>
                        <asp:Button ID="btnlogin" class="btn btn-default" runat="server" Text="Login" />
                        <input type="hidden" value="0" name="hdbutclick">
                    </div>
                    <div style="padding-top: 20px; padding-bottom: 10px; color: White;">
                        Coupon login <a href="couponlogin.aspx?encry=" class="text_terms">Click here</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <span>Copyright © 2015 Microsense Private Limited. All rights reserved </span>
            <img src="images/mifi_logo.png" />
        </div>
    <%--</div>--%>
    <div style="display:none;">
     
    </div>
        
    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>

    <script src="js/layout.min.js" type="text/javascript"></script>

    <script src="js/jquery.slides_bg.js" type="text/javascript" charset="utf-8"></script>

    <script>
        $(function() {
            $('#slides').superslides({            
                hashchange: false,
                play: 3000                
            });


        });
  </script>

    <script src="js/customRadioCheck.js" type="text/javascript"></script>

    <script type="text/javascript">

        $(function() {



            $('#menu').click(function() {

                $('.quick_links').slideToggle();

            });

        });
    
    </script>

    <script type="text/javascript">
        $('input[type=checkbox], input[type=radio]').customRadioCheck();

        (function($) {
            $.support.placeholder = ('placeholder' in document.createElement('input'));
        })(jQuery);



        $(function() {
            if (!$.support.placeholder) {
                $("[placeholder]").focus(function() {
                    if ($(this).val() == $(this).attr("placeholder")) $(this).val("");
                }).blur(function() {
                    if ($(this).val() == "") $(this).val($(this).attr("placeholder"));
                }).blur();

                $("[placeholder]").parents("form").submit(function() {
                    $(this).find('[placeholder]').each(function() {
                        if ($(this).val() == $(this).attr("placeholder")) {
                            $(this).val("");
                        }
                    });
                });
            }
        });
    </script>

    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>

    <script type="text/javascript">

        $(function() {

            $(".quick_links").click(function() {

                $('.srv_links').slideToggle();

            })


        });

        
    </script>

    <script src="popup/jquery.fancybox.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function() {


            $('.fancybox').fancybox({
                width: 700,
                height: 200,
                autoCenter: false

            });


            $('#btn_close').click(function() {

                $("html, body").animate({ scrollTop: $(document).height() }, 1000);

                $('body').css('boder', 'solid 1px red');

            });



        });
	
    </script>

    <script language="javascript" type="text/javascript">

        function validate(frm) {


            if (parseInt(frm.hdbutclick.value) != 0)
                return false
            if (BoxesChecked(frm, "chkagree") <= 0) { alert('Please read the terms of use and acknowledge by clicking on the check box.'); return false; }

            else if (isEmpty(frm.txtroomno, 'Please enter your last name.') || OnlyText(frm.txtroomno, "last name")) { return false; }
            else if (isEmpty(frm.txtlastname, 'Please enter your Registration code.') || isOnlyNumbers(frm.txtlastname, "Registration code")) { return false; }

            frm.hdbutclick.value = 1
        }

          

    </script>

    </form>
</body>
</html>
