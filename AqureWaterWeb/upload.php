<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--

label {
	float: left;
	clear: left;
	margin: 5px 5px 0 0;
	width: 95px;
	text-align: right;
	font-size: 12px;
	color: #445668;
	text-transform: uppercase;
	text-shadow: 0px 1px 0px #f2f2f2;
	font-family: segoeui;
}
label {
	float: left;
	clear: left;
	margin: 8px 20px 0 0;
	width: 95px;
	text-align: right;
	font-size: 15px;
	color: #445668;
	text-transform: uppercase;
	text-shadow: 0px 1px 0px #f2f2f2;
	font-family: segoeui;
}
input {
	width: 260px;
	height: 25px;
	padding: 5px 20px 0px 20px;
	margin: 0 0 20px 0;
	background: #5E768D;
	background: -moz-linear-gradient(top, #546A7F 0%, #5E768D 20%); /* firefox */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #546A7F), color-stop(20%, #5E768D)); /* webkit */
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-box-shadow: 0px 1px 0px #f2f2f2;
	-webkit-box-shadow: 0px 1px 0px #f2f2f2;
	font-family: segoeui;
	font-size: 16px;
	color: #f2f2f2;
	text-shadow: 0px -1px 0px #334f71;
}
 input::-webkit-input-placeholder {
 color:  #a1b2c3;
text-shadow: 0px -1px 0px #38506b;
}
 input:-moz-placeholder {
 color: #a1b2c3;
text-shadow: 0px -1px 0px #38506b;
}
fieldset {
	border: 1px solid #781351;
	width: 20em
}
legend {
	color: #000;
	background: #999;
	border: 1px solid #63F;
	padding: 6px 10px;
}
</style>
</head>
<?php

if(isset($_FILES['files'])){
	$res =  upload_multiple_file($_FILES['files'],"user_files");
	echo $res;
	}


function upload_multiple_file($file,$file_dir="user_files") {

	$overwrite=0;
	$allowed_file_type= array("pdf","ppt","pptx","xls"."xlxs","doc","docx","jpg", "jpeg", "png", "gif");
	$max_file_size = 2097152;

	 foreach($_FILES['files']['name'] as $fkey=> $fname){
	  
		 $ext = pathinfo($fname, PATHINFO_EXTENSION);
		   if (!in_array($ext, $allowed_file_type)) {
		   
			   return "unsupported file format";
				break;
		   }
	  
	 
	 }

	foreach($_FILES['files']['tmp_name'] as $key => $tmp_name ){
		
				
		$file_name = $_FILES['files']['name'][$key];
		
		
		$file_size =$_FILES['files']['size'][$key];
		
		
		$file_tmp_name =$_FILES['files']['tmp_name'][$key];
		
		
		$file_type=$_FILES['files']['type'][$key];

		
        if($max_file_size_check >0) {
			if($file_size > $max_file_size){
			
				$fsize=$max_file_size/1048576;
				return	'File size must be less than '.$fsize.' MB';
				break;
		  
			}
		}
		
     
        if(is_dir($file_dir)==false){
			
              $status =  mkdir("$file_dir", 0700);	
               
               if($status < 1){
                     
					 return "unable to create  diractory $file_dir ";
					 
                }			   
            
		}
			
		if(is_dir($file_dir)){
			
			if($overwrite < 1){
			  
			    move_uploaded_file($file_tmp_name,"$file_dir/".$file_name);
			 
			}
			 
		}
           
		//  $file_upload_query="INSERT into user_uploads (`u_id`,`file_name`,`file_type`) VALUES('$user_id','$file_name','$file_size','$file_type'); ";
		//mysql_query($file_upload_query);		
        
	
   }
	
		return "Success";
	
}

?>

<body>
<fieldset>
<legend>Upload Reusme Here</legend>
<form action="" method="POST" enctype="multipart/form-data">
  <input type="file" name="files[]" multiple/>
  <input type="submit" value="submit"/>
</form></fieldset>
</body>
</html>
