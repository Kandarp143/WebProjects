<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function (){
        $("#click").click(function (){
            //$(this).animate(function(){
                $('html, body').animate({
                    scrollTop: $(".footer").offset().top
                     }, 2000);
            //});
        });
    });
</script>

</head>

<body>
<div class="sidebar1">
<table  style="margin:0 0 0 0; border:0; border-color:#000; background-color:#333333;color:#FFFFFF " border="2"   cellpadding="0" cellspacing="0">
  <tr>
    <td height="100px" width="100px"><a href="home.php" id="hbtn"><img src="img/button/Home.gif" width="100" height="100"  						onmouseover="this.src='img/button/Home_h.gif'" onmouseout="this.src='img/button/Home.gif'"/></a></td>
    <td height="100px" width="100px"><a href="compny.php" id="ovwbtn"><img src="img/button/comp.gif" width="100" height="100"  						onmouseover="this.src='img/button/comp_h.gif'" onmouseout="this.src='img/button/comp.gif'" /></a></td>
    <td height="100px" width="100px"><a href="portfolio.php" id="ovwbtn"><img src="img/button/plants.gif" width="100" height="100" onmouseover="this.src='img/button/plants_h.gif'" onmouseout="this.src='img/button/plants.gif'" /></a></td>
    <td height="100px" width="100px"><a href="support.php" id="ovwbtn"><img src="img/button/support.gif" width="100" height="100" onmouseover="this.src='img/button/support_h.gif'" onmouseout="this.src='img/button/support.gif'" /></a></td>
    <td height="100px" width="100px"><a href="#" id="click"><img src="img/button/career.gif" width="100" height="100" onmouseover="this.src='img/button/career_h.gif'" onmouseout="this.src='img/button/career.gif'"/></a></td>
    
  </tr>
  
 </table>
<!-- end .sidebar1 --></div>

</body>
</html>