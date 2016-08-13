<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ajax Rotating Includes Script</title>
<script type="text/javascript">
var loadedobjects=""
var rootdomain="http://"+window.location.hostname

function ajaxpage(url, containerid){
var page_request = false
if (window.XMLHttpRequest) // if Mozilla, Safari etc
page_request = new XMLHttpRequest()
/*else if (window.ActiveXObject){ // if IE
try {
page_request = new ActiveXObject("Msxml2.XMLHTTP")
} 
catch (e){
try{
page_request = new ActiveXObject("Microsoft.XMLHTTP")
}
catch (e){}
}
}*/
else
return false
page_request.onreadystatechange=function(){
loadpage(page_request, containerid)
}
page_request.open('GET', url, true)
page_request.send(null)
}

function loadpage(page_request, containerid){
if (page_request.readyState == 4 && (page_request.status==200 || window.location.href.indexOf("http")==-1))
document.getElementById(containerid).innerHTML=page_request.responseText
}

function loadobjs(){
if (!document.getElementById)
return
for (i=0; i<arguments.length; i++){
var file=arguments[i]
var fileref=""
if (loadedobjects.indexOf(file)==-1){ //Check to see if this object has not already been added to page before proceeding
if (file.indexOf(".js")!=-1){ //If object is a js file
fileref=document.createElement('script')
fileref.setAttribute("type","text/javascript");
fileref.setAttribute("src", file);
}
else if (file.indexOf(".css")!=-1){ //If object is a css file
fileref=document.createElement("link")
fileref.setAttribute("rel", "stylesheet");
fileref.setAttribute("type", "text/css");
fileref.setAttribute("href", file);
}
}
if (fileref!=""){
document.getElementsByTagName("head").item(0).appendChild(fileref)
loadedobjects+=file+" " //Remember this object as being already added to page
}
}
}

</script>

<style type="text/css">
#leftcolumn{
display:inline-table;
background-color:#FFFFFF;
width:300px;
height: 400px;
border: 1px solid #ccc;
border-radius: 5px;
box-shadow:4px 4px #ccc;
padding: 10px;
}

#leftcolumn a{
padding: 3px 1px;
display: block;
width: 100%;
text-decoration: none;
font-weight: bold;
border-bottom: 1px solid gray;
}

#leftcolumn a:hover{
background-color: #FFFF80;
}

#rightcolumn{
display:inline-table;
width:300px;
height: 390px !important;
adding: 10px;
padding-bottom: 8px;
}
#rcolumn{
color:#000000;
display:inline-block;
background-color:#FFFFFF;
min-width:300px;
width:300px;
max-width:300px;
height: 400px !important;
margin-left: 10px;
border: 1px solid #ccc;
border-radius: 5px;
box-shadow:4px 4px #ccc;
padding: 10px;
padding-bottom: 8px;
overflow-y:auto !important;
overflow-x:hidden;
}

#column{
color:#000000;
width:350px !important;
height: 450px !important;
overflow-y:auto !important;
font-size:12px;
letter-spacing:normal;
font-family:"Lucida Console", Monaco, monospace;
}


* html #rcolumn{ /*IE only style*/
background-color:#FFFFFF;
bgcolor:#ccc;
float:left;
min-width:300px;
width:300px;
max-width:300px;
height: 400px;
margin-left: 10px;
border: 1px solid white;
border-radius: 5px;
box-shadow:4px 4px #ccc;
padding: 10px;
padding-bottom: 8px;
overflow-y:auto !important;
overflow-x:hidden;
}
</style>
</head>

<body>
<table>
<tr>
<td id="column">
<div id="leftcolumn" style="height:400px !important;overflow-y:auto !important;">
<a href="javascript:ajaxpage('pcode/team/ajaxfiles/external.htm', 'rightcolumn');">Porsche Page</a>
<a href="javascript:ajaxpage('pcode/team/ajaxfiles/external.htm', 'rightcolumn');">Ferrari Page</a>
<a href="javascript:ajaxpage('pcode/team/ajaxfiles/external.htm', 'rightcolumn');">Aston Martin Page</a>
</div>
</td>
<td id="column">
<div id="rcolumn" style="height:400px !important;overflow-y:auto !important;">
<div id="rightcolumn"><h3>Choose a page to load.</h3></div>
</div>
</td>
</tr>
</table>
</body>

</html>