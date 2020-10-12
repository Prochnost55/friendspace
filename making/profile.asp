<% username = session("username")%> 
<% uname = session("uname")%>
<% if len(username)=0 then
response.redirect("login.asp")
else%>
<% lastname = trim(session("lastname"))%>
<% Rn = session("Rn")%>
<% user = username&"_"&lastname&"_"&rn%>
<% sex = session("sex")%>

<html>
<head>

<title>Friend Space</title>
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
#POST{
	text-indent:30px;
	font-family:"Comic Sans MS";
	font-size:20px;
	font-weight:lighter;
	color:rgba(10,10,10,0.5);}
#cmnt{
	margin:10px;
	border:1px solid #06F;
	font-family:"Comic Sans MS";
	font-size:17px;
	color:rgba(10,10,10,0.5);}
	
</style><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.thrColLiqHdr #sidebar2, .thrColLiqHdr #sidebar1 { padding-top: 30px; }
.thrColLiqHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]--><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body class="thrColLiqHdr">

<div id="container">
 <div id="header">
  <% profilePic = ("C:\inetpub\wwwroot\Project\user_profile_pic\"&user&".jpg")
 			set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 			if MyFileObject.FileExists(profilePic) Then %>
				<img src='<%response.Write("user_profile_pic\"&user&".jpg")%>' alt="b.jpg" name="photo" border="2" id="photo">
			<%else%>
			 <img src='<%response.Write("user_profile_pic\"&sex&".jpg")%>' alt="b.jpg" name="photo" border="2" id="photo">
			<%end if%>  <span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
  <div id="header_opt">
  <form action="friend_profile1.asp" method="post" onSubmit="namex()">
  <input type="text" id="input" name="name1" align="left" >
  <input type="hidden" id="1stname" name="Fname"value="" align="left" >
  <input type="hidden" id="lstname" name="Lname"value="" align="left" >
  <input type="submit" value="Search" class="button">
  
  </form><a href="logout.asp">Logout</a></div>
  </div>
  <div id="sidebar1">
  
   <ul> <h3>Do something</h3>
    	<div id="li"><a href="user.asp">Home</a></div>
    	<div id="li"><a href="user_settings.asp">Settings</a></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li"><a href="Play_user.asp?game=1">Play game</a></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li_act"><u>Profile</u></div>
     </ul>
  </div>
  <div id="sidebar2"><h3>See Posts of:</h3>
<% 
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open uname, objConn
Do While not objRS.EOF
	if objrs("acc_req") = ("true") then
		if objrs("frn_req") = ("true") then 
 'if objrs("acc_req") = "false" then
' 	
' 		objrs.movenext
'		if objrs.eof then
'			response.Write("no friend")
'			objRS.Close
'		end if
' end if
' 
	n=n+1
Response.Write("<a href=t_userpage2.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& n & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
	Response.Write("<br>")
		

end if
end if
objRS.MoveNext
Loop
if n = 0 then
response.Write("No friend")
end if
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing

%>
  </div>
  <div id="mainContent">
 
  <%  set objConn =Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
				"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend", objConn
Flag=0
Do until objRS.EOF
	If Lcase(Trim(objRS("username")))= lcase(Trim(uname)) Then

	
	
	
	varDob=objRS("Dob")

	varSex=objRS("Sex")

	varContact=objRS("Contact")
	
	
	end if
ObjRS.MoveNext
loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing

%>
  
  <%		Myfile = ("C:\data\"&user&"\profile.txt")
 			set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 			if MyFileObject.FileExists(Myfile) Then%>
    
  			<h1>Your details are </h1>
 			 <p> 
   

 <Table id="info">
<tr>



<tr><td>Date Of Birth	</td><td><input type="text" name="Dob" value="<% =varDob%>"id="input"  readonly="readonly" size="15"/></td></tr>

<tr><td>Sex		</td><td><input type="text" name="House" value="<% =varSex%>" id="input" readonly="readonly" size="10"/></td></tr>

<tr><td>Contact Info		</td><td><input type="text" name="Contact" value="<% =varContact%>" id="input"  size="30"/></td></tr>

   <form action="profile_update.asp" method="post">
   <%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile("C:\data\"&user&"\profile.txt")
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close			
		%>


</table>
<center><Input type="submit" value="Update" class="btn">
</form> 
</center>

</div>
	<%else%>
  <h1>Your details are </h1>
 			 <p> 
   

 <Table id="info">
<tr>

 <form action="profile_update.asp" method="post">

<tr><td>Date Of Birth	</td><td><input type="text" name="Dob" value="<% =varDob%>"id="input"  readonly="readonly" size="15"/></td></tr>

<tr><td>Sex		</td><td><input type="text" name="House" value="<% =varSex%>" id="input" readonly="readonly" size="10"/></td></tr>

<tr><td>Contact Info		</td><td><input type="text" name="Contact" value="<% =varContact%>" id="input" autocomplete="off" size="30"/></td></tr>
<tr><td>Address</td><td><textarea rows='5' cols='30' name='address' id='input'></textarea></td></tr>
<tr><td>Contact Info</td><td><textarea rows='5' cols='30' name='contact_info' id='input'></textarea></td></tr>
<tr><td>Educational Qualification</td><td><textarea rows='5' cols='30' name='edu_qua' id='input'></textarea></td></tr>
 <center> <tr><td rowspan="2" colspan="2"> <Input type="submit" value="Update" class="btn"></td></tr></center>
</form>


</table>
<%
			'Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
'			Set Myfile=Fileobj.OpenTextFile("C:\data\WAP.txt")
'			while NOT Myfile.AtEndOfStream
'			Response.Write(Myfile.Readline)
'			wend
'			MyFile.close			
		%>

</div>
<%end if%>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>
                                  <script>
function namex()
{
var name=document.getElementById('input').value;
var namesplit=name.split(" ");
var finame=namesplit[0];
if (namesplit.length>2)
{
	var fname=namesplit[0];
	var liname=namesplit[2];
	var miname=namesplit[1];
}
else if (namesplit.length==2)
{
	var fname=namesplit[0];
	var liname=namesplit[1];
	var miname="";
}

else if (namesplit.length==1)
{
var fname=namesplit[0];
	var miname="";
var liname="";
}

document.getElementById('lstname').value=liname + " " + miname;
document.getElementById('1stname').value=finame;

	
}

  </script>
</html>

<%end if%>



