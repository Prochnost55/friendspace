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
				response.write("<img src= user_profile_pic\" & user & ".jpg border='2' id='photo'>")
	else

				response.write("<img src= user_profile_pic\" & sex & ".jpg border='2' id='photo'>")
	end if
%> 
	<span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
  <div id="header_opt">
  <form action="friend_profile.asp" method="post">
  <input type="text" id="input" name="name1" align="left" >
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
db_path = server.mappath("db2.mdb")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& db_path
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend", objConn
Do While not objRS.EOF
	flag = 0
	num = num + 1
	if objrs("username") = uname then
		objrs.movenext
		flag = 1
		num = num - 1
	end if
	
	if flag <> 1 then
		Response.Write("<a href=t_userpage2.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& num & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
		Response.Write("<br>")
		objRS.MoveNext
	end if
Loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing

%>
  </div>
  

  <div id="mainContent">
 
  <%		
			file_path = server.mappath("data")
			post_file = (file_path & "\" &user & "\post.txt")
			set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 			if MyFileObject.FileExists(post_file) Then
    
  			response.write("<h1>Your last post was </h1><p>") 
   
  
 	
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(post_file)
			while NOT Myfile.AtEndOfStream
			Response.Write(myfile.Readline)
			wend
			MyFile.close			



 cmnt_file = (file_path & "\" &user & "\comment.txt")
 set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 if MyFileObject.FileExists(cmnt_file) Then 


			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(cmnt_file,1)
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
  
<%			WAP_file = (file_path & "\WAP.txt")
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile(WAP_file)
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


</html>




