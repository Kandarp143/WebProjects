<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Main Page</title>
    <meta name="keywords" content="free css template, golden star, CSS, HTML" />
<meta name="description" content="Golden Star - Free CSS Template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		pauseTime:3000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, 
		directionNavHide:false, //Only show on hover
		controlNav:true, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>

</head>
<body>
    
    <form id="form1" runat="server">
    
<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
    
   	  	<div id="site_title"><h1 style="color: #ffff00">
                 &nbsp; &nbsp; Express</h1>
                 <h1 style="color: #ffff00">
                     visa Consultancy</h1>
                 <p>
                     &nbsp;</p>
             </div>
        
        <div id="twitter"><a href="http://www.facebook.com/templatemo">Follow Us</a></div>
        
    </div> <!-- end of header -->
    
     <div id="templatemo_menu">
        <ul>
            <li><a href="Default.aspx" class="current">Home</a></li>
            <li><a href="Employlogin.aspx">Users</a></li>
            <li><a href="Student_visitor.aspx">Students / Visitors</a></li>
            <li><a href="Adminlogin.aspx">Admin</a></li>
            <li><a href="contecform.aspx">Contact</a></li>
        </ul>    	
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_menu -->
    
    <div id="slider_wrapper">
        <div id="slider">
            <a href="#"><img src="images/slideshow/01.jpg" alt="01" </a>
            <a href="#"><img src="images/slideshow/02.jpg" alt="02" </a>
            <a href="#"><img src="images/slideshow/03.jpg" alt="03" </a>
            <a href="#"><img src="images/slideshow/04.jpg" alt="04" </a>
            <a href="#"><img src="images/slideshow/05.jpg" alt="05" </a>
        </div>
	</div>
    <!-- end of main -->
    <div id="templatemo_main">
        <div class="col_w900 col_w900_last">
            <div class="col_w420 float_l">
                <h2>
                    World Wiled Tour</h2>
                <table class="style1">
                    <tr>
                        <td>
                        <marquee behiviour="scroll" direction="up"> 
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/flag/1.jpg" 
                                Width="150px" />
                            <br />
                            <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/flag/2.jpg" 
                                Width="150px" />
                            <br />
                            <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/flag/3.jpg" 
                                Width="150px" />
                            <br />
                            <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/flag/4.jpg" 
                                Width="150px" />
                            <br />
                            <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl="~/flag/5.jpg" 
                                Width="150px" /></marquee>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col_w420 float_r">
                <h2>
                    Latest Posts</h2>
                <div class="lbe_box">
                    <h3>
                        <a href="#">Etiam a Dui et Eros Imperdiet Rhoncus</a></h3>
                    <p>
                        Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>
                            XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer"
                                rel="nofollow"><strong>CSS</strong></a>. Morbi pellentesque, libero vitae
                        fermentum tincidunt, felis libero accumsan erat, sit amet ornare lectus.</p>
                    <p class="date">
                        June 24, 2048</p>
                </div>
                <div class="lbe_box">
                    <h3>
                        <a href="#">Aenean Quis Nulla ac Nisl Rutrum Ornare</a></h3>
                    <p>
                        Libero accumsan erat, sit amet ornare lectus urna a turpis. Suspendisse libero nibh,
                        luctus ornare elementum sit amet, vulputate et diam.</p>
                    <p class="date">
                        June 18, 2048</p>
                    <div class="cleaner">
                    </div>
                </div>
            </div>
            <div class="cleaner">
            </div>
        </div>
        <div class="cleaner">
        </div>
        <span class="bottom"></span>
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer">
    
    	Copyright © 2013 <a href="#">AGC</a> - 
        Designed by <a href="" target="_parent">softsmart</a>

</div> <!-- end of templatemo_footer -->

    </form>

</body>
</html>

