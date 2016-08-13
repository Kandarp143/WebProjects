<html>
<head>

<script type="text/javascript" src="1.4.2.jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="formwizard.css" />

<script src="formwizard.js" type="text/javascript">
</script>

<script type="text/javascript">
// var myform=new formtowizard({
	// formid: 'feedbackform',
	// persistsection: true,
	// revealfx: ['slide', 500]
// })
var myform=new formtowizard({
 formid: 'feedbackform',
 persistsection: false,
 validate: ['Name','Contact-Number','Email','Learn', 'technology', 'feedback'],
 revealfx: ['fade', 1500] 
})
</script>
</head>

<body> 
<div align="center">
<div style="display:block; width: 400px;">
<form id="feedbackform" action="#" method="post">
<h1> Registration </h1>
<fieldset class="sectionwrap">
<legend>Basic Information</legend>
<table border="0" cellspacing="0" cellpadding="10">
<tr>
<td>Name :</td><td><input id="Name" type="text" size="35" /><br /></td>
</tr>
<tr>
<td>Sex :</td><td><input type="radio" name="sex" value="male" /> Male <input type="radio" name="sex" value="female" /> Female<br /></td>
</tr>
<tr>
<td>Branch :</td><td><input id="Branch" type="text" size="35"><br /></td>
</tr>
<tr>
<td>Collage Name :</td><td><input id="collagename" type="text" size="35"><br /></td>
</tr>
<tr>
<td>Contact No :</td><td><input id="Contact-Number" type="number" size="12" ><br /></td>
</tr>
<tr>
<td>Email :</td><td><input id="Email" type="email" size="35" ><br /></td>
</tr>
</table>
</fieldset>

<fieldset class="sectionwrap">
<legend>Interested Area</legend>
<table border="0" cellspacing="10" cellpadding="10">
<tr>
<td><b>Learn</b></td>
</tr>
<tr>
<td>
<p>
  <label>
    <input type="checkbox" name="Learn" value="el" id="Learn">
    Expert Lacture</label>
  <br>
  <label>
    <input type="checkbox" name="Learn" value="proj" id="Learn">
    PROJECT</label>
  <br>
</p>
</td>
</tr>

<tr>
<td><b>Technology</b></td>
</tr>
<tr>
<td>
<p>
  <label>
    <input type="checkbox" name="technology" value="dotnet" id="technology">
    DOT NET</label>
  <br>
  <label>
    <input type="checkbox" name="technology" value="android" id="technology">
    android</label>
  <br>
  <label>
    <input type="checkbox" name="technology" value="php" id="technology">
    php</label>
  <br>
  <label>
    <input type="checkbox" name="technology" value="ios" id="technology">
    ios</label>
</p>
</td>
</tr>
</table>

</fieldset>

<fieldset class="sectionwrap">
<legend>Confermation</legend>
Any additional Information:<br /> <textarea id="feedback" style="width:350px;height:150px"></textarea><br />
<input type="submit" value="REGISTER" />
<br><br><br>*if Form is not submited then please check all the field.<br> There must be Valid information should be Field..
</fieldset>

</form>
</div>
</div>
</body>
</html>