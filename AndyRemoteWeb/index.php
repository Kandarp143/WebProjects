<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.frg/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="homestyle.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" type="image/x-icon" href="fevicon.ico">
<title>Welcome_Andy Remote </title><!--[if lte IE 7]>
<style>
.content { margin-right: -1px; } /* this 1px negative margin can be placed on any of the columns in this layout with the same corrective effect. */
ul.nav a { zoom: 1; }  /* the zoom property gives IE the hasLayout trigger it needs to correct extra whiltespace between the links */
</style>
<![endif]-->
<script src="jscript/jquery.js" ></script>
		<script>
            $(document).ready(function(){
				$('.content').load("pages/home.htm");
				var div = document.getElementById('content');
                div.style.color = "#fff";
				
				$("a#hbtn").click(function(){	
                                    	$('.content').load("pages/home.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#ovwbtn").click(function(){	
                                    	$('.content').load("pages/overview.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#dwnbtn").click(function(){	
                                    	$('.content').load("pages/download.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                       // div.style.color = "#282828",
                                        div.style.color = "#fff";
                              }); 
			});
			$(document).ready(function(){
				$("a#disbtn").click(function(){	
                                    	$('.content').load("pages/comment/comment.php");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#ftrbtn").click(function(){	
                                    	$('.content').load("pages/features/king.html");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#abtbtn").click(function(){	
                                    	$('.content').load("pages/aboutus.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#qgbtn").click(function(){	
                                    	$('.content').load("pages/quickguide/quickguide.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#suppbtn").click(function(){	
                                    	$('.content').load("pages/support/contactform.php");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
		</script>
        

</head>

<body>

<div class="container">
  
  <div class="header" align="center"><img src="images/websitelogo.png" width="562" height="75" alt="andy Remote" /><!-- end .header --></div>
  
  <div class="content" id="content"> 
 
  <!-- end .content --></div>
  
  <?php include("navigation.php"); ?>
  <?php include("footer.php"); ?>

  
<!-- end .container --></div>
</body>
</html>
