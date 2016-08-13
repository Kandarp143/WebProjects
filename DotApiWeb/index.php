
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>DOTAPI</title>


<script type='text/javascript' src='scode/1.7.2.jquery.min.js'></script>
<script type="text/javascript" src="scode/jquery.easing.compatibility.js"></script>
<script type="text/javascript" src="scode/jquery.easing.min.js"></script>
<script type="text/javascript" src="scode/jquery.easing.1.3.js"></script>

<script>
$(document).ready(function(){
$('#slider').load('slider.php');
});


function loadIt(){$.ajax({
					url: "home.php",
        	        cache: false,
            	    success: function (data){
						$("#body").empty();
                    	$(data).hide().appendTo($("#body")).slideDown(3000,"easeInExpo");
					},
    	            error: function () {
        	            alert("something went wrong");
            	    }
				});
		}
</script>
<style>

html,body{
	background:#000	;
	color:#fff;
	
}

.hcontent{
	background-attachment: fixed;
	width:80%;
	margin:0 auto;
	
}
.slide{
	background-color:#000000;
	background-attachment: fixed;
	width:100%;
	height:100%;
	margin: 0 auto;
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
	-webkit-box-shadow:inset5px 5px 10px #000;
	text-shadow: 0px 1px 1px #fff;
	
}
.btn:hover{
	background-color:#CCC;
	cursor:pointer;
}

</style>


</head>
<body id="body">
<div class="slide" data-stellar-background-ratio="0.5" align="center"> 
	<div class="hcontent">
	<table cellpadding="0" cellspacing="0" >
    <tr>
    <td>
	<div id="slider"> 
	</div>
	</td>
    </tr>
    <tr>
	<td align="center" style="padding-top:5px">
		<button class="btn" id="go" onClick="loadIt();">Click to Continue</button>
	</td>
	</tr>
    </table>
	</div>
</div>

</body>
</html>
