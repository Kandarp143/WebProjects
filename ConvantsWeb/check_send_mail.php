<?php

if(!$_POST) exit;

// Email address verification, do not edit.
function isEmail($email) {
	return(preg_match("/^[-_.[:alnum:]]+@((([[:alnum:]]|[[:alnum:]][[:alnum:]-]*[[:alnum:]])\.)+(ad|ae|aero|af|ag|ai|al|am|an|ao|aq|ar|arpa|as|at|au|aw|az|ba|bb|bd|be|bf|bg|bh|bi|biz|bj|bm|bn|bo|br|bs|bt|bv|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|com|coop|cr|cs|cu|cv|cx|cy|cz|de|dj|dk|dm|do|dz|ec|edu|ee|eg|eh|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gb|gd|ge|gf|gh|gi|gl|gm|gn|gov|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|in|info|int|io|iq|ir|is|it|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|mg|mh|mil|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|museum|mv|mw|mx|my|mz|na|name|nc|ne|net|nf|ng|ni|nl|no|np|nr|nt|nu|nz|om|org|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|pro|ps|pt|pw|py|qa|re|ro|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sj|sk|sl|sm|sn|so|sr|st|su|sv|sy|sz|tc|td|tf|tg|th|tj|tk|tm|tn|to|tp|tr|tt|tv|tw|tz|ua|ug|uk|um|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|yu|za|zm|zw)$|(([0-9][0-9]?|[0-1][0-9][0-9]|[2][0-4][0-9]|[2][5][0-5])\.){3}([0-9][0-9]?|[0-1][0-9][0-9]|[2][0-4][0-9]|[2][5][0-5]))$/i",$email));
}

if (!defined("PHP_EOL")) define("PHP_EOL", "\r\n");

$name     = $_POST['contact_name'];
$email    = $_POST['contact_email'];
$phone   = $_POST['contact_phone'];
$msg  = $_POST['contact_message'];

if(trim($name) == '') {
	echo '<div class="error_message">Attention! You must enter your name.</div>';
	exit();
} else if(trim($email) == '') {
	echo '<div class="error_message">Attention! Please enter a valid email address.</div>';
	exit();
} else if(trim($phone) == '') {
	echo '<div class="error_message">Attention! Please enter a valid phone number.</div>';
	exit();
} else if(!is_numeric($phone)) {
	echo '<div class="error_message">Attention! Phone number can only contain digits.</div>';
	exit();
} else if(!isEmail($email)) {
	echo '<div class="error_message">Attention! You have entered an invalid e-mail address. Please try again.</div>';
	exit();
}

function send_mail($name,$email,$phone,$msg) 
	{ 
		global $mailSent;

		$to = "tusharmepani24@gmail.com";
		
		$subject = "Contact Mail :  FOR Contact Convants.com";  
		
		$from = $email;
		
		$headers = "From: " . $from . "\r\n";
		$headers .= "Reply-To: ". strip_tags($from) . "\r\n";
		
		$headers .= "MIME-Version: 1.0\r\n";
		$headers .= "Content-Type: text/html;charset=ISO-8859-1\r\n";
		$message = '<html><body>';
		$message .= '<div>Hello...</div><br/>';
		$message .= '<div>Name:         '.$name .' </div><br/>';
		$message .= '<div>Email ID :    '. $email. '</div><br/>';
		$message .= '<div>Contect No. : '. $phone. '</div><br/>';
		$message .= '<hr />';
		$message .= '<br />';
		$message .= '<div>Subject :     ' . $subject . '</div><br/>';
		$message .= '<div>Message :		'. $msg . '</div><br/>';
		$message .= "</body></html>";
		
		$mail_sent = @mail( $to, $subject, $message, $headers );
		//$mail_sent = @mail( $to, $subject, $message, "From: " . $from . "\r\n" );
		
		if($mail_sent)
		{
		  	return true;
		}
		 else{
		  	return false;
		}
}

//if($_POST['submit'])
{
	if(send_mail($name,$email,$phone,$msg))
	{
			echo "<SCRIPT LANGUAGE='JavaScript'>window.alert('Succesfully Submitted. Thanks To contact Us. We will reply you Soon.');window.location.href='contact.html';</SCRIPT>";
			//header("location:contact.html");
	}
	else{			
			header("location:contact.html");
	}
}
?>