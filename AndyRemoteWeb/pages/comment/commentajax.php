<?php
include('config.php');
if($_POST)
{
$name=$_POST['name'];
$email=$_POST['email'];
$comment_dis=$_POST['comment'];
$post_id=$_POST['post_id'];

$lowercase = strtolower($email);
  $image = md5( $lowercase );
  
//mysql_query("insert into comment(com_name,come_email,com_dis) values ('$name','$email','$comment_dis','$post_id')");
mysql_query("INSERT INTO comments(com_name,com_email,com_dis,post_id) VALUES('$name','$email','$comment_dis','$post_id')") or die("Err in insert query.. check it into commentajax.php");
}

else { }

?>
<li class="box" >
<img src="button/user.jpg" class="com_img"/><span  class="com_name"> <?php echo $name;?></span> <br /><br/>
<?php echo $comment_dis; ?><br/>
<?php

$date = date("Y-m-d H:i:s");

$original=time($date);

$hr  = 2;
$min = 30;
$sec = 00;

$modified = $original+$sec+($min*60)+($hr*60*60);

echo date("Y-m-d H:i:s",$modified);

/* This'll outputs ...
 
2011-08-26 10:34:16
2011-08-27 12:21:33
*/

?>
</li>	