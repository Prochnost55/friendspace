<% username = session("username")%>
<% if len(username)=0 then
response.redirect("login.asp")
else%>
<% username = session("username")%> 
<% lastname = session("lastname")%>
<% Rn = session("Rn") %>
<% user = username&"_"&lastname&"_"&rn%>
<% sex=session("sex")%>
<html>
<head>

<title>Friends Space</title>
<style type="text/css"> 
@import url("a.css");
li{
	border:1px solid darkgreen;
	width:70%;
	height:25px;
	margin:2px;
	font-weight:inherit;
	text-align:center;}
li:hover{
	margin:4px;
	color:#36C;
	border-color:#36C;
	background:lightgreen;
	font-weight:900;
	}
</style><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

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
  <a href="logout.asp">Logout</a></div></div>
  <div id="sidebar1">
  
   <ul> <h3>Do something</h3>
    	<div id="li"><a href="user.asp">Home</a></div>
    	<div id="li_act"><u>Settings</u></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li"><a href="Play_user.asp?game=1">Play game</a></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
        <div id="li"><a href="friend_list.asp">View All Users</a></div>
     </ul>
  </div>
 <div id="sidebar2">
 	<ul>
    	<li><a href="Change_password.asp">Change Password</a>
       
        <li><a href="del_confirm.asp?ID=<%response.Write(Rn)%>">Delete Account</a>
      </ul>
 </div>
  <div id="mainContent">
  <%if request.querystring("ch") = "y" then
		response.write("<center><font color='red' size='5'>Password changed sucessfully</font></center>")
	elseif request.querystring("ch") = "n" then
		response.write("<center><font color='red' size='5'>Please try after some time. Password not changed.</font></center>")
	end if%>
  <h1>Details </h1>
  <p> 	<b>Browser used :</b>
		<% response.Write request.ServerVariables("HTTP_USER_AGENT")%><BR>
        <b>IP Address of client :</b>
		<% response.Write request.ServerVariables("REMOTE_ADDR")%><BR>
        <b>DNS Host :</b>
		<% response.Write request.ServerVariables("REMOTE_HOST")%><br>
       	<b>Host Server :</b>
		<% response.Write request.ServerVariables("SERVER_NAME")%><br>
    <b>Time And Date</b>
    	<% response.Write(time & "&nbsp;&nbsp;&nbsp; " &date)%>            
  </p> 
	</div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>

</html>
<%end if%>

