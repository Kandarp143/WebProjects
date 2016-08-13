<?php
$folder = 'images/homeimg';
?>
<!doctype html>
<html>
<head>
    <title>jQuery Evo Slider</title>
    
    <link rel="Stylesheet" type="text/css" href="css/default/reset.css" />
    
    <link rel="Stylesheet" type="text/css" href="css/evoslider.css" />
    <link rel="Stylesheet" type="text/css" href="css/default/default.css" />   
    
    <script type="text/javascript" src="scode/1.7.1.jquery.min.js"></script>
    <script type="text/javascript" src="scode/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="scode/jquery.evoslider.lite-1.1.0.js"></script>        
    
</head>

<body>

<div id="mySlider" class="evoslider default"> <!-- start evo slider -->

    <dl>
	<?php   
				require_once("scode/get_file_extension.php");
				if(is_dir($folder))
            	{
                	$dh = opendir($folder) or die('SERVER ERROR');
	                while (!(($file = readdir($dh)) === false ) )
    	            {   	
							$ext = get_ext($file);
							if (($ext == "jpg") || ($ext == "JPG") || ($ext == "jpeg") || ($ext == "JPEG") || ($ext == "bmp") || ($ext == "BMP") || ($ext == "png") || ($ext == "PNG")) 
                        {
        	                echo "<dt>'".$file."'</dt>
								  <dd><img src='".$folder."/".$file."' width='100%' height='auto'></dd>";
						}
					}
        	    }
				closedir($dh);
	?>   	
    </dl>

</div> <!-- end evo slider -->

<script type="text/javascript">
            
    $("#mySlider").evoSlider({
        mode: "slider",                  // Sets slider mode ("accordion", "slider", or "scroller")
        width: 1024,                         // The width of slider
        height: 576,                        // The height of slider
        slideSpace: 9,                      // The space between slides
    
        mouse: false,                        // Enables mousewheel scroll navigation
        keyboard: false,                     // Enables keyboard navigation (left and right arrows)
        speed: 2000,                         // Slide transition speed in ms. (1s = 1000ms)
        easing: "swing",                    // Defines the easing effect mode
        loop: true,                         // Rotate slideshow
   
        autoplay: true,                     // Sets EvoSlider to play slideshow when initialized
        interval: 1000,                     // Slideshow interval time in ms
        pauseOnHover: true,                 // Pause slideshow if mouse over the slide
        pauseOnClick: true,                 // Stop slideshow if playing
        
        directionNav: true,                 // Shows directional navigation when initialized
        directionNavAutoHide: false,        // Shows directional navigation on hover and hide it when mouseout
    
        controlNav: false,                   // Enables control navigation
        controlNavAutoHide: true          // Shows control navigation on mouseover and hide it when mouseout 
    });                                
    
</script>
    
</body>
</html>
