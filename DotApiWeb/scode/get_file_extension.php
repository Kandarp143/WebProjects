<?php
	function get_ext($filename)
	{
		if(strstr($filename, "."))
		{
			$len = strlen($filename);
			$period_pos = strpos($filename, ".");
			
			$tmp_ext = substr($filename, $period_pos+1);
			
			if(strstr($tmp_ext, "."))
			{
				return get_ext($tmp_ext);
			}
			else
				return $tmp_ext;
		}
	}
	function get_fname($filename)
	{
	if(strstr($filename, "."))
		{
			$len = strlen($filename);
			$period_pos = strrpos($filename,".");
			
			$tmp_ext = substr($filename,0,$period_pos);
			
			return $tmp_ext;
		}
		else
			die("No Periods, Check filename for proper extension");
	}
?>