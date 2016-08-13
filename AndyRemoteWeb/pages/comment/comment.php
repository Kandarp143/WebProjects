<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(function() {

$(".submit").click(function() {

var name = $("#name").val();
var email = $("#email").val();
	var comment = $("#comment").val();
		var post_id = $("#post_id").val();
    var dataString = 'name='+ name + '&email=' + email + '&comment=' + comment + '&post_id=' + post_id;
	
	if(name=='' || email=='' || comment=='')
     {
    alert('Please Give Valide Details');
     }
	else
	{
	$("#flash").show();
	$("#flash").fadeIn(400).html('<img src="ajax-loader.gif" align="absmiddle">&nbsp;<span class="loading">Loading Comment...</span>');
$.ajax({
		type: "POST",
  url: "pages/comment/commentajax.php",
   data: dataString,
  cache: false,
  success: function(html){
 
  $("ol#update").append(html);
  $("ol#update li:last").fadeIn("slow");
  document.getElementById('email').value='';
   document.getElementById('name').value='';
    document.getElementById('comment').value='';
	$("#name").focus();
 
  $("#flash").hide();
	
  }
 });
}
return false;
	});



});


</script>
<style type="text/css">
body
{
font-family: "segoeui";
font-size:14px;
}
.comment_box
{
background-color:#D3E7F5; border-bottom:#ffffff solid 1px; padding-top:3px
}
a
	{
	text-decoration:none;
	color:#d02b55;
	}
	a:hover
	{
	text-decoration:underline;
	color:#d02b55;
	}
	*{
}
	
	
	ol.timeline
	{list-style:none;font-size:1.2em;}
	ol.timeline li{ display:none;position:relative;padding:.7em 0 .6em 0;}ol.timeline li:first-child{}
	
	#main
	{
	font-family: "segoeui";
	}
	#flash
	{
	margin-left:100px;
	
	}
	.box
	{
	height:85px;
	border-bottom:#dedede dashed 1px;
	margin-bottom:20px;
	}
		input
	{
	color:#000000;
	font-size:14px;
	border:#666666 solid 2px;
	height:24px;
	margin-bottom:10px;
	width:200px;
	
	
	}
	textarea
	{
	color:#000000;
	font-size:14px;
	border:#666666 solid 2px;
	height:124px;
	margin-bottom:10px;
		width:200px;
	
	}
	.titles{
	font-size:13px;
	padding-left:10px;
	
	
	}
	.star
	{
	color:#FF0000; font-size:16px; font-weight:bold;
	padding-left:5px;
	}
	
	.com_img
	{
	float: left; width: 80px; height: 80px; margin-right: 20px;
	}
	.com_name
	{
	font-size: 16px; color: rgb(102, 51, 153); font-weight: bold;
	}
</style>
</head>

<body style="max-height:500px !important;">

<div id="main">
<table align="center" style="max-height:600px;width:1000px;" border="0" cellspacing="0" cellpadding="0">
  <tr align="center" height="50px">
    <td colspan="2">
    <div style="font-size:24px;font-family:segoeui; text-align:center; padding-left:100px; padding-top:10px; text-justify:auto ; text-decoration:underline" >
      Discussion : Publish your QUERY On wall and Get Ans by user as well as Admin
      </div>
    </td>
    </tr>
  <tr height="450px">
    <td> 
      <div style="height:400px;overflow-y:auto;">
      <?php
      include('config.php');
      //$post_id value comes from the POSTS table
      $post_id=1;
	  $clsss="box";
      $sql=mysql_query("SELECT * FROM comments where post_id='$post_id' ORDER BY no ASC");
      while($row=mysql_fetch_array($sql))
      {
      $name=$row['com_name'];
      $email=$row['com_email'];
      $comment_dis=$row['com_dis'];
      $time=$row['Post_time'];
      
      $lowercase = strtolower($email);
      //$image = md5( $lowercase );
      echo "<li class=".$clsss." ><img src='button/user.jpg' class='com_img'/><span  class='com_name'>".$name."</span> <br /><br/>".$comment_dis."<br/>".$time."</li>";
      echo "<li class=".$clsss." ><img src='button/user.jpg' class='com_img'/><span  class='com_name'>".$name."</span> <br /><br/>".$comment_dis."<br/>".$time."</li>";
      }
      //echo "err";
      ?>
      
      <ol id="update" class="timeline">
        </ol>  
      
      <div id="flash" align="left"  ></div>
      </div>
    </td>
    <td><div style="padding-left:100px">
        <form action="#" method="post">
          <input type="hidden" name="post_id" id="post_id" value="<?php echo $post_id; ?>"/>
          <input type="text" name="title" id="name"/><span class="titles">Name</span><span class="star">*</span><br />
          
          <input type="email" name="email" id="email" /><span class="titles">Email</span><span class="star">*</span><br />
          
          <textarea name="comment" id="comment" rows="50" cols="100" style="overflow:auto"></textarea><br />
          
          <input type="submit" class="submit" value=" Submit Comment " />
          </form>
      </div>
    </td>
  </tr>
  
</table>






</div>
</body>
</html>
