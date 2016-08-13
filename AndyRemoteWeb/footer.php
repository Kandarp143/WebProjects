<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
<script src="jscript/jquery.js" ></script>
		<script>
            $(document).ready(function(){
					
			$("a#ahome").click(function(){	
                                    	$('.content').load("pages/home.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#aoverview").click(function(){	
                                    	$('.content').load("pages/overview.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#adownload").click(function(){	
                                    	$('.content').load("pages/download.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                       // div.style.color = "#282828",
                                        div.style.color = "#fff";
                              }); 
			});
			$(document).ready(function(){
				$("a#adis").click(function(){	
                                    	$('.content').load("pages/comment/comment.php");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#afeature").click(function(){	
                                    	$('.content').load("pages/feature.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#aaboutus").click(function(){	
                                    	$('.content').load("pages/aboutus.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#aguide").click(function(){	
                                    	$('.content').load("pages/quickguide/quickguide.htm");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
			$(document).ready(function(){
				$("a#acontact_us").click(function(){	
                                    	$('.content').load("pages/support/contactform.php");
                                      //  $('.content').style(background, '#09F');
                                        var div = document.getElementById('content');
                                        div.style.color = "#fff";    
                              });
			});
		</script>
</head>

<body>
<div class="footer">
<div id="leftfoot" align="left" style="float:left">
  <h4>
  <a href="#" id="ahome">Home</a>&nbsp;
  <a href="#" id="aoverview">Overview </a>&nbsp;
  <a href="#" id="adownload">Download</a>&nbsp;
  <a href="#" id="afeature">Feature</a>&nbsp;
  <a href="#" id="adis">Disussion</a>&nbsp;
  <a href="#" id="aguide">Quick_guide</a>&nbsp;
  <a href="#" id="aaboutus">About_us</a>&nbsp;
  <a href="#" id="acontact_us">Contact_Us</a>&nbsp;</h4>
  </div>
 <div id="rightfoot" align="right" style="float:right">
  <h4>&#169;2013 Andy_remote</h4>
 </div>

  <!-- end .footer --></div>
  
</body>
</html>