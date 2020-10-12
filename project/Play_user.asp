<% username = session("username")%> 
<% if Len(username)=0 then
response.Redirect("login.asp") 
else%>
<% lastname = session("lastname")%>
<% Rn = session("Rn")%>
<% game = request.QueryString("game")%>
<% user = username&"_"&lastname&"_"&rn%>
<% sex=session("sex")%>
<html>
<head>

<title>Friend Space</title>
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
    	<div id="li"><a href="user_settings.asp">Settings</a></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li_act"><u>Play game</u></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
     </ul>
  </div>
  <div id="sidebar2"><h3>Games:</h3>
<ul>
	<li><a href="Play_hangman.asp">Hangman</a></li>
    <li><a href="Play_reflex_tester.asp">Reflex Tester</a></li>	
    </ul>
  </div>
  <div id="mainContent">
  <h1>Select any game from the list </h1>
	
    
	  <p> 
  
	</div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>
                                
</html>
<%end if%>

