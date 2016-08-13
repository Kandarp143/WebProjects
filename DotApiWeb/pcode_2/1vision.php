<?php
$fdr = 'images/homeimg';
?>
<!doctype html>
<html>
<head>
<script type='text/javascript' src='scode/1.7.2.jquery.min.js'></script>
<script type='text/javascript' src='scode/modernizr.custom.13303.js'></script>
<script type='text/javascript' src='scode/jquery.shockwave.js'></script> 
<script type='text/javascript' src='scode/jquery.shockwave.effects.js'></script>
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
// 'viewport-dimension':{width: 448, height: 252}

jQuery(function(){
	$('#vc').shockwave(ida, {
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
	 'viewport-dimension': {width: 448, height: 252}
	});

})

// jQuery(function(){
// $('#vc').shockwave(ida, {
 // 'slider-type': 'CubeSlider',
 // 'rotation-duration': 1000, // in ms
 // 'tiles-in-x': 5,
 // 'tiles-in-y': 1,
 // 'autostart-slideshow': true,
 // 'wave-fixed-origin': 'x',
 // 'viewport-dimension':{width: 448, height: 252}
// });
// alert("hi");
// })
</script>

</head>
<body>
<div style="width:100%;height: auto;">
<table width="100%" height="100%" border="0" cellspacing="10" cellpadding="0" align="center">
  <tr height="48%">
    <td colspan="3" width="52%" >
    <div style="height:250px !important;overflow-y:auto !important;padding-right:50px;"><h1 class="hl">Vision</h1>
    	<hr><br><p>
        Dot API is an independent and professional firm whose  vision is to provide affordable and quality expertise in the areas of education and development for commercial organization.<br><br>
        Our aim is to facilitate , promote and achieve excellent success in study and commercial field to set and maintain standards of firm which reflects the constantly changing requirements of the computer industry.<br><br>
        We strive to be a reliable and competitive partners in the market in which we operate and we aim to support our clients at each stage of their experience and development. <br>
      </p>
      </div>
      </td>
	  <td width="48%" align="center" ><div id="vc"></div>	</td>
      
  </tr>
  <tr><td height="4%" colspan="4"></td></tr>
  <tr height="48%" >
    <td colspan="4"><h1 class="hl">Why us ?</h1 ><hr><br>
        <p><strong>	</strong>We use latest the visibility and appearance of organization websites and project training for students with expert lecture and workshop.<br><br>
      Our approach is a unique and alternative , we seek to build a long standing relationship with you which built on trust and ongoing communication. We have the experience , Knowledge and skill to achieve and grow your success.</p> 
  	</td>
  </tr>
</table>
</div>
</body>
</html>