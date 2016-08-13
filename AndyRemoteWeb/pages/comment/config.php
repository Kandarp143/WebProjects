<?php
$mysql_hostname = "localhost";
$mysql_user = "kp";
$mysql_password = "1234";
$mysql_database = "cs";
$prefix = "";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");

?>