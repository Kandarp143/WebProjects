<?php
$fdr = 'images/homeimg';
$folder = 'images/stdimg';
?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>DOTAPI</title>

<!--<link rel="stylesheet" type="text/css" href="css/reset-min.css">
-->
<link rel="stylesheet" type="text/css" href="css/slidestyle.css">

<script type="text/javascript" src="scode/1.7.2.jquery.min.js"></script>
<script type="text/javascript" src="scode/js.js"></script>
<script type="text/javascript" src="scode/jquery.stellar.min.js"></script>
<script type="text/javascript" src="scode/waypoints.min.js"></script>
<script type="text/javascript" src="scode/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="scode/jquery.easing.compatibility.js"></script>
<script type="text/javascript" src="scode/jquery.easing.min.js"></script>

<script type='text/javascript' src='scode/modernizr.custom.13303.js'></script>
<script type='text/javascript' src='scode/jquery.shockwave.js'></script> 
<script type='text/javascript' src='scode/jquery.shockwave.effects.js'></script>

<link rel="stylesheet" type="text/css" href="css/ddajaxsidepanel.css">
<script src="scode/ddajaxsidepanel.js"></script>

<script>
var ida = [ 
		<?php   
			require_once("scode/get_file_extension.php");
				if(is_dir($fdr))
            	{
                	$dh = opendir($fdr) or die('SERVER ERROR');
	                while (!(($f = readdir($dh)) === false ) )
    	            {   	
							$ext = get_ext($f);
							if (($ext == "jpg") || ($ext == "JPG") || ($ext == "jpeg") || ($ext == "JPEG") || ($ext == "bmp") || ($ext == "BMP") || ($ext == "png") || ($ext == "PNG")) 
							{
								echo "{ src: '".$fdr."/".$f."'},";
							}
					}
        	    }
				closedir($dh);
		?>
		{ src:'images/homeimg/slide1.phg'}
];
jQuery(function(){
	$('#vc').shockwave(ida, {
   'slider-type': 'CubeSlider',
   'rotation-duration': 600,  // in ms
   'tiles-in-x': 5,
   'tiles-in-y': 1,
    'autostart-slideshow': true,
   'wave-fixed-origin': [0, 0],
	 'standard-control-buttons-area': null,
	 'viewport-dimension': {width: 448, height: 252}
  });
	/*$('#vc').shockwave(ida, {
	 'slider-type': 'UnhookedSlider',
	 'random-time-to-unhook': 1500, // in ms
 	 'free-fall-time': 150, // ms
	 'autostart-slideshow': true,
	 'maximum-slideshow-cycles': 0,
	 'slideshow-delay': 5000,
	 'duration': 100,
	 'tiles-in-x': 5,
	 'tiles-in-y': 5,
	 'show-permanent-description': false,
	 'viewport-dimension': {width: 448, height: 252}
	});*/
})

var imagesDataArray = [ //For demos, define a single set of images to be used in all of the demos below
		<?php   require_once("scode/get_file_extension.php");
				if(is_dir($folder))
            	{
                	$dh = opendir($folder) or die('SERVER ERROR');
	                while (!(($file = readdir($dh)) === false ) )
    	            {   	
							$ext = get_ext($file);
							if (($ext == "jpg") || ($ext == "JPG") || ($ext == "jpeg") || ($ext == "JPEG") || ($ext == "bmp") || ($ext == "BMP") || ($ext == "png") || ($ext == "PNG")) 
                        {
        	                echo "{ src: '".$folder."/".$file."'},";
						}
					}
        	    }
				closedir($dh);
		?>
];
jQuery(function(){
		$('#scube').shockwave(imagesDataArray, {
	 'slider-type': 'UnhookedSlider',
   'random-time-to-unhook': 1500, // in ms
   'free-fall-time': 150, // ms
	 'autostart-slideshow': true,
	 'maximum-slideshow-cycles': 10,
	 'slideshow-delay': 5000,
	 'duration': 100,
   'tiles-in-x': 5,
   'tiles-in-y': 5,
	 'show-permanent-description': false,
	 'viewport-dimension': {width: 400, height: 243}
	});

})
</script>



<!--<script type="text/javascript">
$(document).ready(function(){
$('#bodyContent').slideDown(1500);
});
</script>	

<style>
#bodyContent {
display:none;
height: 100%;
}
</style>-->

</head>


<body id="bodyContent">
    <div class="navigation" align="center">
   	<table width="100%" height="100px" border="0" cellspacing="0" cellpadding="10" >
  <tr>
    <td width="20%"><img src="images/logo.png" width="100%" height="100%"></td>
    <td width="60%" align="center">
    	<ul>
    	  <li data-slide="1">VISION</li>
          <li data-slide="2">WE PROVIDE</li>
          <li data-slide="3">PORTFOLIO</li>
          <li data-slide="4">STUDENT</li>
          <li data-slide="5">DESK</li>
          <li data-slide="6">CONTACT US</li>
		</ul>	
    </td>
    <td width="20%">&nbsp;</td>
  </tr>
</table>
    </div>
    <div class="slide" id="slide1" data-slide="1" data-stellar-background-ratio="0.5" style="background:#fff;color:#000;">
		<div class="scontent">
		<?php require_once('pcode/1vision.php'); ?>
		</div>
        <div class="fthot">
        <ftext>
		<h3 align="center">&quot; If you are not willing to risk the usual you will have to settle for the ordinary. &quot; - Jim Rohn</h3>
        </ftext>
		</div>
    </div><!--End Slide 1-->


	<div class="slide" id="slide2" data-slide="2" data-stellar-background-ratio="0.5" style="background:#000;color:#fff;">
    	<div class="scontent">
        <iframe src="pcode/2wwd.php" width="100%" height="90%" frameborder="0"></iframe>
		<?php //require_once('pcode/2wwd.php'); ?>
        </div>
        <div class="fthot">
        <ftext>
		<h3 align="center">&quot; Innovation distinguishes between a leader and a follower. &quot; - Steve Job</h3>
        </ftext>
		</div>
	</div><!--End Slide 2-->


	<div class="slide" id="slide3" data-slide="3" data-stellar-background-ratio="0.5" style="background:#fff;color:#000;">
		<div class="scontent">
		<?php require_once('pcode/3portf.php'); ?>
        </div>
        <div class="fthot">
        <ftext>
		<h3 align="center">&quot; Your most unhappy customers are your greatest source of learning. &quot; – Bill Gates</h3>
        </ftext>
		</div>
	</div><!--End Slide 3-->


	<div class="slide" id="slide4" data-slide="4" data-stellar-background-ratio="0.5" style="background:#000;color:#FFF;">
		<div class="scontent">
		<?php require_once('pcode/4student.php'); ?>
        </div>
        <div class="fthot">
        <ftext>
		<h3 align="center">&quot; I want to put a ding in the universe. &quot; - Steve Job</h3>
        </ftext>
		</div>
	</div><!--End Slide 4-->


	<div class="slide" id="slide5" data-slide="5" data-stellar-background-ratio="0.5" style="background:#fff;color:#000;">
		<div class="scontent">
		<?php require_once('pcode/5aboutus.php'); ?>
        </div>
        <div class="fthot">
        <ftext>
		<h3 align="center">&quot; It’s more fun to be a pirate than to join the navy. &quot; - Steve Job</h3>
        </ftext>
		</div>
	</div><!--End Slide 5-->


	<div class="slide" id="slide6" data-slide="6" data-stellar-background-ratio="0.5" style="background:#000;color:#fff;" >
		<div class="ccontent">
        <?php require_once('pcode/6contactus.php'); ?>  
        </div>
       <div class="foot">
        <?php require_once('pcode/7footer.php'); ?>
        </div>
	</div><!--End Slide 6-->
    
    
    <script type="text/javascript">
var maildivider="[at]" //enter divider you use to divide your email address strings

for (i=0; i<=(document.links.length-1); i++){
if (document.links[i].href.indexOf(maildivider)!=-1)
document.links[i].href=document.links[i].href.split(maildivider)[0]+"@"+document.links[i].href.split(maildivider)[1]
}

</script>

</body>
</html>
