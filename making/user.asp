<% 
	username = session("username") 
	uname=session("uname")
	sex = session("sex")

 
if len(username)=0 then
	response.redirect("login.asp")
else

 	
	lastname = trim(session("lastname"))
	Rn = session("Rn")
	user = username&"_"&lastname&"_"&rn
end if
%>
<html>
	<head><title>Friend Space</title>
	
		<style>
			@import url("a.css");
			.btn{
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	font-family:"Comic Sans MS";
	color:green;
	text-shadow:0 1px 1px rgba(255,255,255,.5);
	background-color:yellow;
	background-repeat:no-repeat;
	border:1px solid darkgreen;
	cursor:pointer;
	border-radius:4px;
	-webkit-box-shadow:0 1px 0 rgba(255,255,255,.5);
	box-shadow:0 1px 0 rgba(255,255,255,.5);
	margin-top:2px;
	
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
	margin-top:5px;
	margin-bottom:5px;
	}
		</style>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>

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
  <form action="friend_profile1.asp" method="post" onSubmit="namex()">
  <input type="text" id="input" name="name1" align="left" >
  <input type="hidden" id="1stname" name="Fname"value="" align="left" >
  <input type="hidden" id="lstname" name="Lname"value="" align="left" >
  <input type="submit" value="Search" class="button">
  
  </form><a href="logout.asp">Logout</a></div></div>
  <div id="sidebar1">
  
    <ul> <h3>Do something</h3>
    	<div id="li_act"><u>Home</u></div>
    	<div id="li"><a href="user_settings.asp">Settings</a></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li"><a href="Play_user.asp?game=1">Play game</a></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
        <div id="li"><a href="friend_list.asp">View All Users</a></div>
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
if objrs("acc_req") = "false" then
 	
 		objrs.movenext
		if objrs.eof then
			response.Write("no friend")
			objRS.Close
		end if
 end if
 
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
  <%
  Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open uname, objConn
Do While not objRS.EOF
	if objrs("frn_req")="true" then
		if objrs("acc_req") = "false" then
		senderFname = objrs("name")
		senderLname = objrs("last_name")
		Runame = objrs("username")
		regno = objrs("user_regno")
		%>
    <div id="mainContent">
    	<%="<h2>"&senderFname&" "&senderLname&" "%>has sent you friend request.</h2>
        <form action="friend_req_acc.asp" method="post">
        <input type="hidden" value="<%=senderFname%>" name="senderFname">
        <input type="hidden" value="<%=senderlname%>" name="senderlname">
        <input type="hidden" value="<%=Runame%>" name="Runame">
         <input type="hidden" value="<%=regno%>" name="Regno">
        <input type="submit" value="Accept" class="btn">
        <input type="button" value="Decline" class="btn">
        </form>
    </div>
	<%
	end if
	end if
objRS.MoveNext
Loop

objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing%>
  
  <div id="mainContent">
 
  <%		Myfile = ("C:\data\"&user&"\post.txt")
 			set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 			if MyFileObject.FileExists(Myfile) Then%>
    
  			<h1>Your last post was </h1>
 			 <p> 
   
  <%
 	
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile("C:\data\"&user&"\post.txt")
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close			
%>

<%
 Myfile = ("C:\data\"&user&"\comment.txt")
 set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 if MyFileObject.FileExists(Myfile) Then 
%>
<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile("C:\data\"&user&"\comment.txt",1)
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close	
%>
<h3>Leave a Comment : </h3>
	<form action="user_comment.asp" method="post">           
 	<input type="text" id="input" name="cmnt" autocomplete="off">
	<input type="hidden" value='<%=Ruser%>' name="hide">
    <input type="submit" class="btn" value="comment">
	</form>
          

	</div>
<%else%>
         <h3>Leave a Comment : </h3>
	<form action="user_comment.asp" method="post">           
 	<input type="text" id="input" name="cmnt" autocomplete="off">
	<input type="hidden" value='<%=Ruser%>' name="hide">
    <input type="submit" class="btn" value="comment">
	</form></div>
          
<%end if%>
	<%else%>
  
<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile("C:\data\WAP.txt")
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close			
		%>

</div>
<%end if%>
	<br class="clearfloat" >
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




