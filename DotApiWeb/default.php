<?php
$folder = 'images/homeimg';
?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>DOTAPI</title>

<script type='text/javascript' src='scode/1.7.2.jquery.min.js'></script>
<script type='text/javascript' src='scode/modernizr.custom.13303.js'></script>
<script type='text/javascript' src='scode/jquery.shockwave.js'></script> 
<script type='text/javascript' src='scode/jquery.shockwave.effects.js'></script>
<script>
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

/*	$('#flipedge').shockwave(imagesDataArray, {
	'slider-type': 'CubeSlider',
   'rotation-duration': 2000,  // in ms
   'tiles-in-x': 1,
   'tiles-in-y': 1,
   'wave-fixed-origin': 'y',
   'autostart-slideshow': true,
   'standard-control-buttons-area': $('#unhookbuttons'),
   'viewport-dimension':{width: 1024, height: 576}
	});
*/

$('#flipedge').shockwave(imagesDataArray, {
 'slider-type': 'CubeSlider',
 'rotation-duration': 600, // in ms
 'tiles-in-x': 5,
 'tiles-in-y': 1,
 'autostart-slideshow': true,
 'wave-fixed-origin': [0, 0],
 'standard-control-buttons-area': null,
 'next-slide-button': $('#nextcontrol'),
 'previous-slide-button': $('#prevcontrol'),
 'play-pause-slideshow-buttons': $('#playpausecontrol'),
 'viewport-dimension':{width: 1024, height: 576}
});
})
/*  function loadI11t(){
		   		$('#body').slideUp(2000),
	                    window.location = 'home.php';*/
				/*$.ajax({
    	            url: "home.php",
        	        cache: false,
            	    success: function (data) {
                	    $("#body").empty();
                    	$(data).hide().appendTo($("#body")).slideDown(3000);
	                },
    	            error: function () {
        	            alert("something went wrong");
            	    }
            	});
				
				
        }*/
</script>
<style>

html,body{
	background:#666666	;
	color:#FFF;
	
}
.hcontent{
	background-attachment: fixed;
	width:80%;
	margin:0 auto;
	
}
.slide{
	background-attachment: fixed;
	width:100%;
	margin: 0 auto;
	height:100%;
	
}

.btn{
	display:inline-block;
	background:#000;
	background-clip:padding-box;
	color: rgba(255,255,255,0.6);
	font-size:18px;
	text-align:center;
	padding:0px 10px 0px 10px ;
	-webkit-background-clip:border	;
	-webkit-border-radius: 5px;
	-webkit-backface-visibility:visible;
	-webkit-box-shadow:inset5px 5px 10px #fff;
	text-shadow: 1px 1px 1px #000;
	
}
.btn:hover{
	background-color:#CCC;
	cursor:pointer;
}

</style>


</head>
<body id="body">
<div class="slide" data-stellar-background-ratio="0.5">
	<div class="hcontent">
	<table cellpadding="0" cellspacing="0" >
    <tr>
    <td><div id='flipedge'></div></td>
    <td>
    <ul id='buttons6' style="list-style:none">
	<li id="nextcontrol"><img src="icons/arrow_right.png"></li>
	<li id="playpausecontrol"><span class="play"><img src="icons/button_play.png"></span><span class="pause"><img src="icons/button_pause.png"></span></li>
	<li id="prevcontrol"><img src="icons/arrow_left.png"></li>
	</ul>
	</td>
    </tr>
    <tr>
	<td align="center">
		<button class="btn" id="go" onclick="loadIt();">Click to Continue</button>
	</td>
	</tr>
    </table>
	</div>
</div>

</body>
</html>
