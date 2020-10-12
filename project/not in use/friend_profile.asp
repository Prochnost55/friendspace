<% username = session("username")%> 
<% if len(username)=0 then
response.redirect("login.asp")
else%>
<% lastname = session("lastname")%>
<% Rn = session("Rn")%>
<% user = username&"_"&lastname&"_"&rn%>
<%
Dim objConn, objRS, Rn, Flag
	
	fullname = Request.form("name1")

	chop = InStr(fullname," ")
	if chop <> 0 then
	chop = chop-1
	Frnd_Fname = Left(fullname,chop)
	namelen = len(fullname)
	frnd_Lname = mid(fullname,chop+2,namelen-chop-1)
	else
	Frnd_fname = fullname
	frnd_lname = " "
	end if


	set objConn =Server.CreateObject("ADODB.Connection")
	db_path = server.mappath("db2.mdb")
	objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path
	set objRS = Server.CreateObject("ADODB.RecordSet")
	objRS.Open "Friend", objConn
	Flag=0
	Do until objRS.EOF
		If Lcase(Trim(objRS("name")))= lcase(Trim(frnd_fname)) Then
			if Lcase(Trim(objRS("last_name")))= lcase(Trim(frnd_Lname)) Then

				varName=objRS("Name")
				varLName=objRS("Last_name")
				num1 = objRs("user_regno")
				varDob=objRS("Dob")
	
				varSex=objRS("Sex")
	
				varContact=objRS("Contact")
				flag = 1
				
			end if
		end if
			ObjRS.MoveNext
	loop
	objRS.Close
	objConn.Close
	Set objRS = Nothing
	Set objConn = Nothing
	Ruser = varName&"_"&varLName&"_"&Num1
%>
<% If flag=1 Then %>
<html>
<head>

<title>Friends Page</title>
<style type="text/css"> 
@import url("a.css");
body  {
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background: #666666;
	margin: 0; 
	padding: 0;
	text-align: center; 
	color: #000000;
	background-color: lightgreen;
}
#a	{
	color:red;
	text-align:center;}
.thrColLiqHdr #container { 
	width: 80%;  
	background: lightgreen;
	margin: 0 auto; 
	border: 2px solid darkgreen;
	border-radius:8px;
	text-align: left;}
.thrColLiqHdr #header { 
	background:#393; 
	padding: 0 10px;
	border:1px solid #393;
	border-radius:4px;
	margin-bottom:10px;
	text-align:left;

} 
.thrColLiqHdr #header h1 {
	margin-right:10px;
	padding: 0px 0; 
}


.thrColLiqHdr #sidebar1 {
	float: left; 
	width: 22%; 
	background: #EBEBEB; 
	padding: 15px 0; 
}
.thrColLiqHdr #sidebar2 {
	float: right; 
	width: 23%; 
	background: #EBEBEB; 
	padding: 15px 0;
}
.thrColLiqHdr #sidebar1 p, .thrColLiqHdr #sidebar1 h3, .thrColLiqHdr #sidebar2 p, .thrColLiqHdr #sidebar2 h3 {
	margin-left: 10px; 
	margin-right: 10px;
}


.thrColLiqHdr #mainContent { 
	margin: 0 24% 0 23.5%;
	background-color:lightgreen;
	border:1px solid darkgreen;
	border-radius:8px;
}

.thrColLiqHdr #footer { 
	padding: 0 10px;
	background:#DDDDDD;
	text-align:center;
} 
.thrColLiqHdr #footer p {
	margin: 0;
	padding: 10px 0; 
}


.fltrt { 
	float: right;
	margin-left: 8px;
}
.fltlft { 
	float: left;
	margin-right: 8px;
}
.clearfloat { 
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
#footer a:link{
	color:green;}
#footer a:visited{
	color:green;}
#footer a:hover{
	color:darkgreen;} 
#header_opt a:link {
	color:white;
	}
#header_opt a:visited {
	color:white;
	}
#header_opt a:hover {
	color:#666;
	}
#sidebar2 a:link{
	color:green;}
#sidebar2 a:visited{
	color:green;}
#sidebar2 a:hover{
	color:darkgreen;} 
#sidebar1 a:link{
	color:green;}
#sidebar1 a:visited{
	color:green;}
#sidebar1 a:hover{
	color:darkgreen;} 
#input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	font-style:italic;
	cursor:text;
	}
#input:focus{
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
#body{
	border:1px solid darkgreen;
	margin-left:400px;
	margin-right:400px;
	margin-top:150px;
	border-radius:4px;}
#np{
	
	background:lightgreen;
	font-size:40px;
	font-family:Gabriola;
	color:darkGreen;
	margin-top:0px;}
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
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	}
.btn:active{
	border-color:#bbb;
	background-image:none;
	-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5)
	}
.pre{
	
	text-align:center;
	color:#000;
	}
	
</style><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body class="thrColLiqHdr">

<div id="container">
 <div id="header">
 
<% 
				profilePicPath = cstr(server.mappath("user_profile_pic\" & user & ".jpg"))
				set MyFileObject = server.CreateObject("Scripting.filesystemobject")
				if MyFileObject.FileExists(profilePicPath) Then
%>
				<img src='<%response.write("user_profile_pic\" & user & ".jpg")%>' border="2" id="photo">
<%
else
%>
				<img src='<%response.Write("user_profile_pic\"&sex&".jpg")%>' border="2" id="photo">
<%
end if
%> 
	<span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
  <div id="header_opt">
  <form action="friend_profile.asp" method="post">
  <input type="text" name="name1" align="left" >
  <input type="submit" value="About friend" class="button">
  
  </form><a href="logout.asp">Logout</a></div></div>
  <div id="sidebar1">
  
    <ul> <h3>Do something</h3>
    	<div id="li_act"><u>Home</u></div>
    	<div id="li"><a href="user_settings.asp">Settings</a></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li"><a href="Play_user.asp?game=1">Play game</a></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
        
     </ul>
  </div>
  <div id="sidebar2"><h3>See Posts of:</h3>
<% 
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& db_path
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend", objConn
Do While not objRS.EOF
 if objrs("user_regno") = rn then
 	objrs.movenext
 end if
 	n=n+1
Response.Write("<a href=t_userpage2.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& n & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
	Response.Write("<br>")
		
objRS.MoveNext
Loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
  </div>
  <div id="mainContent">
  <h1>Details of <% =varName & " " & varLName%> are :</p></h1>
<form method="post">
<div id="pre"><center><Table id="info">
<tr>

<tr><td>Name			</td><td><input name="Name" type="text"  id="input" value="<% =varName & " " & varLName%>" readonly="readonly" size="25"/></td></tr>

<tr><td>Date Of Birth	</td><td><input type="text" name="Dob" value="<% =varDob%>"id="input"  readonly="readonly" size="25"/></td></tr>

<tr><td>Sex		</td><td><input type="text" name="House" value="<% =varSex%>" id="input" readonly="readonly" size="25"/></td></tr>

<tr><td>Contact Info		</td><td><input type="text" name="Contact" value="<% =varContact%>" id="input" readonly="readonly" size="25"/></td></tr></table><center>

</form></center></center>
<h2>More about <% =varName & " " & varLName%></h2>
<center><%
 	
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			file_path = server.mappath("data")
			Set Myfile=Fileobj.OpenTextFile(file_path&"\"&Ruser&"\profile.txt")
			do until Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			loop
			MyFile.close		
%></center>
   </div></div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>
</html>
<% Else %>
<style>
@import url("a.css");
</style>
<center><p id="np"><h1>Oops......No Record Found.......!!!</h1></p>
<form action="user.asp">
<input type="submit" value="Return to Home Page" class="btn">
</form></center></div>
</body>
</html>
<%end if%>

<%end if%>