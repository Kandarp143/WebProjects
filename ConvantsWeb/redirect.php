<?php

	function redirect($url, $flag)
	{
		if($flag)
		{
			header('HTPP/1.1 301 Moved Permanently');
		}
		header('Location: '.$url);
		exit();
	}

?>