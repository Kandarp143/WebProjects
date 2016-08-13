<?php
$folder = 'images/stdimg';

?>
<!doctype html>
<html>
<head>
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

<style>
	
@font-face {
        font-family: "pws";
		src:url(font/pws.ttf);
}		
@font-face {
        font-family: "fut";
		src:url(font/atwriter.ttf);
}		


.stdnt{
	letter-spacing:2px;
	font-family:"Comic Sans MS";
	text-align:justify;
}
.stdnt top{
	display:block;
	width:auto;
	text-align:justify;
	font-size:16px;
	color:rgba(255,255,255,.6);
}
.stdnt top hlite{
	font-family:fut;
	font-weight:bold;
	color:rgba(255,255,255,.8);
}
.stdnt middle{
	display:block;
	width:auto;
	font-size:16px;
}
.stdnt middle hlite{
	font-family:fut;
	font-size:20px;
	font-weight:bold;
	color:#FBFF59;
}
.stda{
	display:inline-block;
}
.stdnt ftr{
	display:block;
	width:auto;
	text-align:center;
	font-family:Calibri;
	font-size:12px;
}

</style>
</head>
<body>
<div class="stdnt" style="width:100%;height:100%;">
<top>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
   <td width="auto" align="center" ><img src="images/projects.png" width="100%" height="auto"></td>
    <td width="80%">
    	We provide 6 months/weeks /one year industrial training program for BCA, BE, B.Tech, B.SC,  M.SC, PGDCA, MCA, MBA, Diploma, DOEAC &amp; IGNOU students.This program lays  emphasis on developing the student's ability to think dynamically and to  widespread the logical ideas.
      <br>So DOT  API  is a good option if you are a:<br>
       <hlite> -> looking 6 Months/6 Weeks or one year Training.<br>
        -> Student  struggling to make the move to work?<br>
        -> interested  in Interview Preparation and Recruitment process in IT Industry.</hlite></td>
  </tr>
  </table>
  </top>
  <br>
  <middle>
  <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td colspan="3" style="color:rgba(255,255,255,.6);"><h3 style="color:rgba(255,255,255,1);">WE PROVIDE  IN TRAINGING :</h3>
      -real time  project training with code explanation and implementation.<br>
      -Study  material is provided with the course which consist of concepts, examples and real-time  examples.<br>
      -documents  (Synopsis, project report &amp; training letter etc) related to your academic  requirement</td>
    <td colspan="2" rowspan="4"><div id="scube"></div><!--<img src="images/student-training-programs-main copy.png" height="auto" width="400px">--></td>
  </tr>
  <tr style="color:#fff;">
    <td >Our course  for 6month/weeks of one year</td>
    <td rowspan="2"></td>
    <td>Other  specialized course</td>
    </tr>
  <tr>
    <td ><hlite>-dot net  training <br>
      -php with  mysql  training<br>
      -android  training<br>
      -ios  training</hlite></td>
    <td >
      <hlite>
        -photoshop<br>
        -html/css<br>
        -cloud  computing</hlite></td>
    </tr>
  <tr>
    <td colspan="2">download  our course content : </td>
    <td><a id="stda" href="pcode/portfolio/pf_1.html" rel="ajaxpanel" data-loadtype="iframe"><img src="images/download.png" width="200px"></a></td>
    </tr>
</table>
</middle>



</div>
</body>
</html>