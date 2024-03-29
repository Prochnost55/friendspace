<!--<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css"> 
<!-- 
body  {
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background: #666666;
	margin: 0; /* it's good practice to zero the margin and padding of the body element to account for differing browser defaults */
	padding: 0;
	text-align: center; /* this centers the container in IE 5* browsers. The text is then set to the left aligned default in the #container selector */
	color: #000000;
}

/* Tips for this Hybrid layout
1. Since the side columns em-based sizing is based on the user's default font size, you will want to be sure that background graphics in the columns take that into account. Built correctly, this is more accessible for those that need larger font sizes, since the width of the columns remains proportionate. If this is undesirable with your design, simply change the width to a pixel size and be sure to change the margins on the #mainContent div accordingly.
2. Since the sizing of side columns in this layout are based on the 100% font size in the body element, if you decrease the text size overall by using a font-size: 80% on the body element or the #container, remember that the column widths will downsize proportionately. You may want to increase their widths, and the size of the #mainContent div's side margins, to compensate for this.
3. If font sizing is changed in differing amounts on each div instead of on the overall design (ie: #sidebar1 is given a 70% font size and #mainContent is given an 85% font size), this will proportionately change each of the divs overall size. You may want to adjust based on your final font sizing.
4. The #container div is not necessary for this layout at the 100% width. You may want to use it to create faux columns or limit the width of the layout.
5. It is not neccessary to have the 100% width on the #container div since, by nature, a div takes up 100% of the available space. It is here so that if you want to decrease the size of the overall container - perhaps leaving a bit of margin on each side - this will already be available for adjustment.
*/
.thrColHybHdr #container { 
	width: 100%;
	background: #FFFFFF;
	/*margin: 0 auto;  the auto margins (in conjunction with a width) center the page if needed */
	text-align: left; /* this overrides the text-align: center on the body element. */
}  
.thrColHybHdr #header { 
	background: #DDDDDD; 
	padding: 0 10px;  /* this padding matches the left alignment of the elements in the divs that appear beneath it. If an image is used in the #header instead of text, you may want to remove the padding. */
} 
.thrColHybHdr #header h1 {
	margin: 0; /* zeroing the margin of the last element in the #header div will avoid margin collapse - an unexplainable space between divs. If the div has a border around it, this is not necessary as that also avoids the margin collapse */
	padding: 10px 0; /* using padding instead of margin will allow you to keep the element away from the edges of the div */
}

/* Tips for sidebar1:
1. Be aware that if you set a font-size value on this div, the overall width of the div will be adjusted accordingly.
2. Since we are working in ems, it's best not to use padding on the sidebar itself. It will be added to the width for standards compliant browsers creating an unknown actual width. 
3. Space between the side of the div and the elements within it can be created by placing a left and right margin on those elements as seen in the ".thrColHybHdr #sidebar1 p" rule.
*/
.thrColHybHdr #sidebar1 {
	float: left; 
	width: 11em; /* since this element is floated, a width must be given */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 0; /* top and bottom padding create visual space within this div */
}
.thrColHybHdr #sidebar2 {
	float: right; 
	width: 11em; /* since this element is floated, a width must be given */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 0; /* top and bottom padding create visual space within this div */
}
.thrColHybHdr #sidebar1 h3, .thrColHybHdr #sidebar1 p, .thrColHybHdr #sidebar2 p, .thrColHybHdr #sidebar2 h3 {
	margin-left: 10px; /* the left and right margin should be given to every element that will be placed in the side columns */
	margin-right: 10px;
}

/* Tips for mainContent:
1. If you give this #mainContent div a font-size value different than the #sidebar1 div, the margins of the #mainContent div will be based on its font-size and the width of the #sidebar1 div will be based on its font-size. You may wish to adjust the values of these divs.
2. The space between the mainContent and sidebar1 is created with the left margin on the mainContent div.  No matter how much content the sidebar1 div contains, the column space will remain. You can remove this left margin if you want the #mainContent div's text to fill the #sidebar1 space when the content in #sidebar1 ends.
3. To avoid float drop, you may need to test to determine the approximate maximum image/element size since this layout is based on the user's font sizing combined with the values you set. However, if the user has their browser font size set lower than normal, less space will be available in the #mainContent div than you may see on testing.
4. In the Internet Explorer Conditional Comment below, the zoom property is used to give the mainContent "hasLayout." This avoids several IE-specific bugs that may occur.
*/
.thrColHybHdr #mainContent {
 	margin: 0 12em 0 12em; /* the right margin can be given in ems or pixels. It creates the space down the right side of the page. */ 
	padding: 0 2em 0 2em; /* padding here creates white space "inside the box." */
} 
.thrColHybHdr #footer { 
	padding: 0 10px; /* this padding matches the left alignment of the elements in the divs that appear above it. */
	background:#DDDDDD;
} 
.thrColHybHdr #footer p {
	margin: 0; /* zeroing the margins of the first element in the footer will avoid the possibility of margin collapse - a space between divs */
	padding: 10px 0; /* padding on this element will create space, just as the the margin would have, without the margin collapse issue */
}

/* Miscellaneous classes for reuse */
.fltrt { /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page */
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
</style><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.thrColHybHdr #sidebar1, .thrColHybHdr #sidebar2 { padding-top: 30px; }
.thrColHybHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
</head>

<body class="thrColHybHdr">

<div id="container">
  <div id="header">
    <h1>Header</h1>
  </div>
  <div id="sidebar1">
    <h3>sidebar1 Content</h3>
    <p>The background color on this div will only show for the length of the content. If you'd like a dividing line instead, place a border on the left side of the #mainContent div if the #mainContent div will always contain more content than the #sidebar1 div. </p>
    <p>Donec eu mi sed turpis feugiat feugiat. Integer turpis arcu, pellentesque  eget, cursus et, fermentum ut, sapien. </p>
  </div>
  <div id="sidebar2">
    <h3>sidebar2 Content</h3>
    <p>The background color on this div will only show for the length of the content. If you'd like a dividing line instead, place a border on the right side of the #mainContent div if the #mainContent div will always contain more content than the #sidebar2 div. </p>
    <p>Donec eu mi sed turpis feugiat feugiat. Integer turpis arcu, pellentesque  eget, cursus et, fermentum ut, sapien. </p>
  </div>
  <div id="mainContent">
    <h1> Main Content </h1>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent aliquam,  justo convallis luctus rutrum, erat nulla fermentum diam, at nonummy quam  ante ac quam. Maecenas urna purus, fermentum id, molestie in, commodo  porttitor, felis. Nam blandit quam ut lacus. </p>
    <p>Quisque ornare risus quis  ligula. Phasellus tristique purus a augue condimentum adipiscing. Aenean  sagittis. Etiam leo pede, rhoncus venenatis, tristique in, vulputate at,  odio. Donec et ipsum et sapien vehicula nonummy. Suspendisse potenti. Fusce  varius urna id quam. Sed neque mi, varius eget, tincidunt nec, suscipit id,  libero. </p>
    <h2>H2 level heading </h2>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent aliquam,  justo convallis luctus rutrum, erat nulla fermentum diam, at nonummy quam  ante ac quam. Maecenas urna purus, fermentum id, molestie in, commodo  porttitor, felis. Nam blandit quam ut lacus. Quisque ornare risus quis  ligula. Phasellus tristique purus a augue condimentum adipiscing. Aenean  sagittis. Etiam leo pede, rhoncus venenatis, tristique in, vulputate at, odio.</p>
	</div>
	<br class="clearfloat" />
   <div id="footer">
    <p>Footer</p>
  </div>
</div>
</body>
</html>-->
<%
a = request.Form("Uname")
response.Write(a)
b = request.Form("Upass")
response.Write(b)

%>
set objConn =Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
				"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend", objConn
Flag=0
Do until objRS.EOF
	If objRS("Name")= Username Then
	flag = 1
	end if
ObjRS.MoveNext
loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
<% 'If flag=1 Then %>
<%
		'username = request.form("Uname")
		'password = request.form("Upass")
			'if username = "abhishek" then
'				if password = "singh" then
				usernametest= username
				length = len(usernametest)
				username = ucase(left(username,1))
				usernametest = lcase(mid(usernametest,2)) 
				username = username & usernametest
				
%>
<% 'LastAccessTime = Request.Cookies ("LastTime") %>
<%' LastAccessDate = Request.Cookies ("LastDate") %>
<%
   'If (Request.Cookies ("NumVisits")="") Then
'   Response.Cookies("NumVisits") = 0
'   Else
'   response.Cookies("NumVisits") = request.Cookies("NumVisits") + 1
'   end if
   %>
   <% 'Response.Cookies("lastDate") = Date %>
   <% 'Response.Cookies("lastTime") = Time %>
<html>
<head>
<title>Friends Page</title>
<style type="text/css"> 

body  {
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background: #666666;
	margin: 0; /* it's good practice to zero the margin and padding of the body element to account for differing browser defaults */
	padding: 0;
	text-align: center; /* this centers the container in IE 5* browsers. The text is then set to the left aligned default in the #container 					selector */
	color: #000000;
	background-color: lightgreen;
}
#a	{
	color:red;
	text-align:center;}
.thrColLiqHdr #container { 
	width: 80%;  /* this will create a container 80% of the browser width */
	background: lightgreen;
	margin: 0 auto; /* the auto margins (in conjunction with a width) center the page */
	border: 2px solid darkgreen;
	border-radius:8px;
	text-align: left; /* this overrides the text-align: center on the body element. */
} 
.thrColLiqHdr #header { 
	background:#393; 
	padding: 0 10px;
	border:1px solid #393;
	border-radius:4px;
	margin-bottom:10px;
	text-align:right;
/* this padding matches the left alignment of the elements in the divs that appear beneath it. If an image is used in the #header instead of text, you may want to remove the padding. */
} 
.thrColLiqHdr #header h1 {
	margin-right:10px;/* zeroing the margin of the last element in the #header div will avoid margin collapse - an unexplainable space between divs. If the div has a border around it, this is not necessary as that also avoids the margin collapse */
	padding: 0px 0; /* using padding instead of margin will allow you to keep the element away from the edges of the div */
}

/* Tips for sidebars:
1. Since we are working in percentages, it's best not to use side padding on the sidebars. It will be added to the width for standards compliant browsers creating an unknown actual width. 
2. Space between the side of the div and the elements within it can be created by placing a left and right margin on those elements as seen in the ".thrColLiqHdr #sidebar1 p" rule.
3. Since Explorer calculates widths after the parent element is rendered, you may occasionally run into unexplained bugs with percentage-based columns. If you need more predictable results, you may choose to change to pixel sized columns.
*/
.thrColLiqHdr #sidebar1 {
	float: left; /* this element must precede in the source order any element you would like it be positioned next to */
	width: 22%; /* since this element is floated, a width must be given */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 0; /* top and bottom padding create visual space within this div  */
}
.thrColLiqHdr #sidebar2 {
	float: right; /* this element must precede in the source order any element you would like it be positioned next to */
	width: 23%; /* since this element is floated, a width must be given */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 0; /* top and bottom padding create visual space within this div */
}
.thrColLiqHdr #sidebar1 p, .thrColLiqHdr #sidebar1 h3, .thrColLiqHdr #sidebar2 p, .thrColLiqHdr #sidebar2 h3 {
	margin-left: 10px; /* the left and right margin should be given to every element that will be placed in the side columns */
	margin-right: 10px;
}

/* Tips for mainContent:
1. the space between the mainContent and sidebars is created with the left and right margins on the mainContent div.
2. to avoid float drop at a supported minimum 800 x 600 resolution, elements within the mainContent div should be 300px or smaller (this includes images).
3. in the Internet Explorer Conditional Comment below, the zoom property is used to give the mainContent "hasLayout." This avoids several IE-specific bugs.
*/
.thrColLiqHdr #mainContent { 
	margin: 0 24% 0 23.5%;
	background-color:lightgreen;
	border:1px solid darkgreen;
	border-radius:8px;/* the right and left margins on this div element creates the two outer columns on the sides of the page. No matter how much content the sidebar divs contain, the column space will remain. You can remove this margin if you want the #mainContent div's text to fill the sidebar spaces when the content in each sidebar ends. */
}

.thrColLiqHdr #footer { 
	padding: 0 10px; /* this padding matches the left alignment of the elements in the divs that appear above it. */
	background:#DDDDDD;
	text-align:center;
} 
.thrColLiqHdr #footer p {
	margin: 0; /* zeroing the margins of the first element in the footer will avoid the possibility of margin collapse - a space between divs */
	padding: 10px 0; /* padding on this element will create space, just as the the margin would have, without the margin collapse issue */
}

/* Miscellaneous classes for reuse */
.fltrt { /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* this class should be placed on a div or break element and should be the final element before the close of a container that should fully contain its child floats */
	clear:both;
    height:0;
    font-size: 1px;
    line-height: 0px;
}
body,td,th {
	font-family: Gabriola;
	color: darkgreen;
}
body {
	background-color: lightgreen;
}
a:link{
	color:green;}
a:visited{
	color:green;}
a:hover{
	color:darkgreen;}
--> 
</style><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.thrColLiqHdr #sidebar2, .thrColLiqHdr #sidebar1 { padding-top: 30px; }
.thrColLiqHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]--><!--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body class="thrColLiqHdr">

<div id="container">
 <div id="header">
    <h1>Welcome, <%' =response.write(username)%></h1>
  <!-- end #header --></div>
  <!--<div id="sidebar1">
  <h3>Sidebar1 </h3>
    <p>The background color on this div will only show for the length of the content. If you'd like a dividing line instead, place a border on the left side of the #mainContent div if the #mainContent div will always contain more content than the #sidebar1 div. </p>
    <p>Donec eu mi sed turpis feugiat feugiat. Integer turpis arcu, pellentesque  eget, cursus et, fermentum ut, sapien. </p>
  <!-- end #sidebar1 --></div>
  <!--<div id="sidebar2">
    <h3>See Posts of:</h3>
    <p></p>
  <!-- end #sidebar2 --></div>
  <!--<div id="mainContent">
    <h1>Your last post was </h1>
    <p><%
			'Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
'			Set Myfile=Fileobj.OpenTextFile("C:\data\"& username &"\posts.txt")
'			while NOT Myfile.AtEndOfStream
'			Response.Write(Myfile.Readline)
'			Response.Write("<br>")
'			wend
'			MyFile.close
%> </p>
    <h2>H2 level heading </h2>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent aliquam,  justo convallis luctus rutrum, erat nulla fermentum diam, at nonummy quam  ante ac quam. Maecenas urna purus, fermentum id, molestie in, commodo  porttitor, felis. Nam blandit quam ut lacus. Quisque ornare risus quis  ligula. Phasellus tristique purus a augue condimentum adipiscing. Aenean  sagittis. Etiam leo pede, rhoncus venenatis, tristique in, vulputate at, odio.</p>
	<!-- end #mainContent --></div>
	<!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats --><!--<br class="clearfloat" />
  <div id="footer">
    <p><a href="details.asp">Last access details</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="homepage.asp">Logout</a> <!-- end #footer --></div>
<!-- end #container --></div>
<!--<form>
<input type="hidden" value="<%'=LastAccessTime%>" name="LastAccessTime">
<input type="hidden" value="<%'=LastAccessDate%>" name="LastAccessDate">
</form>

</body>
</html>
<%			
				'else
'				server.execute("login.asp")
'				response.write("<div id='a'>Username or password is incorrect.</div>")
'				end if
'%>
<% 				
				'else
'			
'				server.execute("login.asp")
'				response.write("<div id='a'>Username or password is incorrect.</div>")
'				end if
%>
<%'end if%>

