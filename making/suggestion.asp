<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<% username = session("username")%> 
<% lastname = trim(session("lastname"))%>
<% Uname = username & " " & lastname%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Friend's Space</title>
<style type="text/css">

<!--
body {
	font-style:gabriola;
	background: lightgreen;
	margin: 0; /* it's good practice to zero the margin and padding of the body element to account for differing browser defaults */
	padding: 0;
	text-align: center; /* this centers the container in IE 5* browsers. The text is then set to the left aligned default in the #container selector */
	color:darkgreen;
}

/* Tips for Elastic layouts 
1. Since the elastic layouts overall sizing is based on the user's default fonts size, they are more unpredictable. Used correctly, they are also more accessible for those that need larger fonts size since the line length remains proportionate.
2. Sizing of divs in this layout are based on the 100% font size in the body element. If you decrease the text size overall by using a font-size: 80% on the body element or the #container, remember that the entire layout will downsize proportionately. You may want to increase the widths of the various divs to compensate for this.
3. If font sizing is changed in differing amounts on each div instead of on the overall design (ie: #sidebar1 is given a 70% font size and #mainContent is given an 85% font size), this will proportionately change each of the divs overall size. You may want to adjust based on your final font sizing.
*/
.oneColElsCtrHdr #container {
	width: 46em;  /* this width will create a container that will fit in an 800px browser window if text is left at browser default font sizes */
	background: #FFFFFF;
	margin:0 auto; /* the auto margins (in conjunction with a width) center the page */
	border: 2px solid green;
	border-radius:8px;
	text-align: left; /* this overrides the text-align: center on the body element. */
}
.oneColElsCtrHdr #header { 
	background: #DDDDDD; 
	font-family:gabriola;
	padding: 0 10px 0 20px;  /* this padding matches the left alignment of the elements in the divs that appear beneath it. If an image is used in the #header instead of text, you may want to remove the padding. */
} 
.oneColElsCtrHdr #header h1 {
	margin: 0;
	color:green;
	font-style:gabriola;
/* zeroing the margin of the last element in the #header div will avoid margin collapse - an unexplainable space between divs. If the div has a border around it, this is not necessary as that also avoids the margin collapse */
	padding: 10px 0; /* using padding instead of margin will allow you to keep the element away from the edges of the div */
}
.oneColElsCtrHdr #mainContent {
	padding: 0 20px; /* remember that padding is the space inside the div box and margin is the space outside the div box */
	background:#F5F5F5;
	font-family:gabriola;
}
.oneColElsCtrHdr #footer { 
	margin:1% auto;
	border-top:2px solid darkgreen;
	width:80%;
	font-family:gabriola;
} 
.oneColElsCtrHdr #footer p {
	margin: 0; /* zeroing the margins of the first element in the footer will avoid the possibility of margin collapse - a space between divs */
	padding: 10px 0; /* padding on this element will create space, just as the the margin would have, without the margin collapse issue */
}
-->
.input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	
	font-style:italic;
	cursor:text;
	}
.input:focus{
	border:2px solid green;}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#FFF);
	}
.btn{
	display:inline-block;
	padding:5px 10px;
	font-size:19px;
	font-weight:bold;
	font-family:gabriola;
	line-height:18px;
	color:Darkgreen;
	text-shadow:0 1px 1px rgba(255,255,255,.5);
	background-color:yellow;
	background-repeat:no-repeat;
	border:1px solid darkgreen;
	cursor:pointer;
	border-radius:6px;
	-webkit-box-shadow:0 1px 0 rgba(255,255,255,.5);
	box-shadow:0 1px 0 rgba(255,255,255,.5);
	visibility:visible;
	display:inline-block;}
.btn:hover{
	text-decoration:none;
	background-color:#CF0;
	background-image:-moz-linear-gradient(#FF0,#FFF);
	background-image:-ms-linear-gradient(#FF0,#FFF);
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#CC3,#FF0);
	background-image:-o-linear-gradient(#FF0,#FFF);


	background-image:linear-gradient(#FF0,#FFF);
	filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);
	border-color:#030;
	color:#030;}
.btn:active{
	border-color:#bbb;
	background-image:none;
	-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	margin-top:10px;
	margin-bottom:10px;
	}
	#box{
	display:block;
	margin:1% auto;
	
	color:#ffffff;
	-webkit-border-radius:10px;
	width:100px;
	height:60px;
	font-family:gabriola;
	font-size:30px;
	border:2px solid green;
	width:300px;
	color:green;
	background:yellow;
	padding:5px;
	-webkit-border-radius:25px;
	-webkit-box-shadow:rgb(110,110,110) 8px 8px 8px;
	text-align: center;
	-webkit-transition:-webkit-transform 2s, opacity 2s, background 2s, width 2s, height 2s;
	}
#box:hover{
	-webkit-transform: rotate(360deg);
	opacity: 1;
	background:yellow;
	width:450px;
	height:110px;
	
	}
#a{
	margin:1px auto;}
h1 {
	margin: 0;
	color:green;
	font-family:gabriola;
/* zeroing the margin of the last element in the #header div will avoid margin collapse - an unexplainable space between divs. If the div has a border around it, this is not necessary as that also avoids the margin collapse */
	padding: 10px 0;}
	
</style></head>

<body class="oneColElsCtrHdr">
 <h1>Please Submit your precious suggetions here : </h1>
		<hr width="80%" color="darkgreen">

<div id="container">

  <div id="header">
  
  <!-- end #header --></div>
  <div id="mainContent">

   <form action="sugg_sub.asp" method="post">
   <table><tr><td><h3>Your name:</h3></td><td> <input type="text" name="sugg_name" class="input" size="30" autocomplete="off" value="<%=uname%>"/></td></tr><br>
   <tr><td><h3>Your E-mail ID:</h3></td><td> <input type="text" name="sugg_email" class="input" size="30" autocomplete="off"/></td></tr>
<tr><td><h3>Suggestion :</h3></td><td> <textarea rows="10" cols="70" class="input" name="suggestion" autocomplete="off"></textarea></td></tr></table>
   <center><input type="submit" value="Submit" class="btn"></center>
   </form>
	<!-- end #mainContent --></div>

<!-- end #container --></div>
<div id="footer">
<h2>Created by Cdt. Abhishek Singh.</h2>
</div>
</body>
</html>
