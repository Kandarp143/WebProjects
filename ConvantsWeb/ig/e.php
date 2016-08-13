<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
<div align="center">
<?php
    require_once 'code/get_file_extension.php';
	$folder = 'events/';
	if(is_dir($folder))
    {
		$dh = opendir($folder) or die('Could not open directory.');
	    while (!(($file = readdir($dh)) === false ) )
	   {   
		 	$ext = get_ext($file);
		  	if ( (!is_dir($folder."/".$file)) && ($ext =="")||($ext == "jpg") || ($ext == "JPG") || ($ext == "jpeg") || ($ext == "JPEG") || ($ext == "bmp") || ($ext == "BMP") || ($ext == "png") || ($ext == "PNG") )
		  	{
		  	echo "  <a href ='".$folder."/".$file."' rel=lightbox[roadtrip] ><img src='".$folder."/".$file."' alt=".$file." width=300px height=150px ></a>
			     ";
		  	}
		}
	closedir($dh);
	}
?>
</div>
