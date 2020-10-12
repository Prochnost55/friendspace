<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Friend Space</title>

<style type="text/css"> 
<!-- 
body  {
	font: 100% gabriola;
	background: Lightgreen;
	color:darkgreen;
	margin: 0; /* it's good practice to zero the margin and padding of the body element to account for differing browser defaults */
	padding: 0;
	text-align: center; /* this centers the container in IE 5* browsers. The text is then set to the left aligned default in the #container selector */
	color: #000000;
}
.twoColLiqRtHdr #container { 
	width: 80%;  /* this will create a container 80% of the browser width */
	background: lightgreen;
	color:darkgreen;
	margin: 0 auto; /* the auto margins (in conjunction with a width) center the page */
	text-align: left; /* this overrides the text-align: center on the body element. */
} 
.twoColLiqRtHdr #header { 
	background: lightgreen; 
		padding: 0 10px;  /* this padding matches the left alignment of the elements in the divs that appear beneath it. If an image is used in the #header instead of text, you may want to remove the padding. */
} 
.twoColLiqRtHdr #header h1 {
	margin: 0; /* zeroing the margin of the last element in the #header div will avoid margin collapse - an unexplainable space between divs. If the div has a border around it, this is not necessary as that also avoids the margin collapse */
	padding: 10px 0; /* using padding instead of margin will allow you to keep the element away from the edges of the div */
}

/* Tips for sidebar1:
1. since we are working in percentages, it's best not to use padding on the sidebar. It will be added to the width for standards compliant browsers creating an unknown actual width. 
2. Space between the side of the div and the elements within it can be created by placing a left and right margin on those elements as seen in the ".twoColLiqRtHdr #sidebar1 p" rule.
3. Since Explorer calculates widths after the parent element is rendered, you may occasionally run into unexplained bugs with percentage-based columns. If you need more predictable results, you may choose to change to pixel sized columns.
*/
.twoColLiqRtHdr #sidebar1 {
	float: right;/* since this element is floated, a width must be given */
	border:2px solid darkgreen;
	
	border-radius:4px;
	width: 24%; 
	background: lightgreen; /* the background color will be displayed for the length of the content in the column, but no further */
	padding-top: 15px 0; /* top and bottom padding create visual space within this div  */
}
.twoColLiqRtHdr #sidebar1 h3, .twoColLiqRtHdr #sidebar1 p {
	margin-left: 10px; /* the left and right margin should be given to every element that will be placed in the side columns */
	margin-right: 10px;
}

/* Tips for mainContent:
1. the space between the mainContent and sidebar1 is created with the right margin on the mainContent div.  No matter how much content the sidebar1 div contains, the column space will remain. You can remove this right margin if you want the #mainContent div's text to fill the #sidebar1 space when the content in #sidebar1 ends.
2. to avoid float drop at a supported minimum 800 x 600 resolution, elements within the mainContent div should be 430px or smaller (this includes images).
3. in the Internet Explorer Conditional Comment below, the zoom property is used to give the mainContent "hasLayout." This avoids several IE-specific bugs.
*/
.twoColLiqRtHdr #mainContent { 
	margin: 0 26% 0 10px; /* the left margin should mirror the margin on the header and footer for proper alignment. */
} 

.twoColLiqRtHdr #footer { 
	padding: 0 10px; /* this padding matches the left alignment of the elements in the divs that appear above it. */
	background:#DDDDDD; 
} 
.twoColLiqRtHdr #footer p {
	margin: 0; /* zeroing the margins of the first element in the footer will avoid the possibility of margin collapse - a space between divs */
	padding: 10px 0; /* padding on this element will create space, just as the the margin would have, without the margin collapse issue */
}

/* Miscellaneous classes for reuse */
.fltrt { /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* this class should be placed on a div or break element and should be the final element before the close of a container that should fully contain a float */
	clear:both;
    height:0;
    font-size: 1px;
    line-height: 0px;
}
--> 
#topheader{
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
	border-bottom:2px solid darkgreen;
	margin:10px;
	}
#header{
	border-bottom:2px solid darkgreen;
	margin-bottom:20px;}
#Friend{
	border:1px solid green;
	border-radius:4px;
	height:150px;
	margin:10px;}
#mainContent{
	border:2px solid darkgreen;
	border-radius:4px;}
#the_footer{
	text-align:center;
	
	border-top:2px solid darkgreen;
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
	display:inline-block;
}
 
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#FFF);
	}
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
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5)
	}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	margin-top:10px;
	margin-bottom:10px;
	}
	
			#form{
				display:inline-block;}
				a:link {
	color: #FFF;
}
.input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	height:25px;
	font-style:italic;
	cursor:text;
	}
.input:focus{
	border:2px solid green;}

</style><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.twoColLiqRtHdr #sidebar1 { padding-top: 30px; }
.twoColLiqRtHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]--></head>

<body class="twoColLiqRtHdr">

<div id="container">
  <div id="header">
   <center> <header id="topheader">Friend's Page</header></center>
  <!-- end #header --></div>
  <div id="sidebar1">
    <h3>sidebar1 Content</h3>
    <div id="Friend"><marquee scrollamount="3" dir="ltl">
			<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile("C:\data\1.txt")
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			Response.Write("<br>")
			wend
			MyFile.close			
			%>
       	             <%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile("C:\data\2.txt")
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			Response.Write("<br>")
			wend
			MyFile.close			
			%>
            </marquee></div>
			<div id="log"><center><H1>If already have an ID then plz login....</h1></center><hr color="green">
			<form name="form2" action="http:\\localhost\project\login.asp">
			<center><input type="submit" class="btn"></center>
			</form></div>
			</aside>

  <!-- end #sidebar1 --></div>
  <div id="mainContent">
    <article><form action="http://localhost/project/new_friend.asp" method="post" enctype="plain" name="form" id="form">
						1. Name :
  						<input type="text" size="20" maxlength="20" align="Left" name="Fname" value="" class="input" title="Your name \ username" 					   						onblur="namex()">
  						<input type="Hidden" size="8" maxlength="20" align="Left" name="Lname" >
						  Roll No : <input type="text" size="5" maxlength="10" align="Left" name="Rn" value="" class="input" title="Your Roll No."><br>
2. Your Password : 
<input type="password" align="left" name="password" class="input" title="Your Password">
<br>
						  
				  3. Address : 
				  <input type="text" size="23" maxlength="20" align="Left" name="Address" value="" class="input" title="Address">
				  <br>
				  4. Date of Birth   :
				  <input type="text" name="dob" size=10 class="input" title="D.O.B."><br>		
				  5. You are studying in class : 
						  
				  <input type="text" size="23" maxlength="20" align="Left" name="class" value="" class="input" title="Your Class"><br>
				  6. Your house is : 
				  <input type="text" size="23" maxlength="20" align="Left" name="house" value="" class="input" title="Your House"><br>
						  
						  
				  7. Hobbies : 
				  <input type="text" size="23" maxlength="20" align="Left" name="hobbies" value="" class="input" title="Your Hobbies"><br>
				  8. Contact info : 
				  <input type="text" align="Left" name="Contact" value="" class="input" title="Phone No. / Email-ID">
				  <br>
				  <center><input name="" type="submit"  class="btn"  value="Submit" >
				  <input type="reset" value="Reset" class="btn">
		          </form>
                                       <form action="http://localhost/project/Friend_list.asp" method="post"  id="form" >
                                        <input type="Submit" value="Veiw all friends"  class="btn" >
				 						 </form>
<Hr color="DarkGreen">
                                    <center><p>Know About A friend</p>
                                    <form action="http://localhost/project/Know_friend.asp" >
                                    <input type="submit" value="Next page" class="btn">
                                    </form></center>
			</article>
	<!-- end #mainContent --></div>
	<!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats --><br class="clearfloat" />
  <footer id="the_footer">
			<h2>Made by Abhishek Singh</h2>
			</footer>
<!-- end #container --></div>
</body>
</html>
