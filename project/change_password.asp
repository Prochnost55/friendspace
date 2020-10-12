<% username = session("username")%> 
<% lastname = session("lastname")%>
<% rn = session("rn")%>
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
</style>
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
 <a href="logout.asp">Logout</a></div></div>
  <div id="sidebar1">
  
     
    	<ul> <h3>Do something</h3>
    	<div id="li"><a href="user.asp">Home</a></div>
    	<div id="li_act"><u>Settings</u></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li"><a href="Play_user.asp?game=1">Play game</a></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
     </ul>
  </div>
 <div id="sidebar2">
 	<ul>
    	<div id=li_act><u>Change_password</u></div>
      
        <div id="li"><a href="del_confirm.asp?ID=<%response.Write(Rn)%>">Delete Account</a></div>
      </ul>
 </div>
  <div id="mainContent">
  <h1>Change Password</h1>
  <hr color="darkgreen" width="500">
  <p> 
 	<center><form action="change_password_process.asp" method="post">
    Enter your old password : <input type="password" name="old_pass" id="input"><br>
    Enter your new password : <input type="password" name="new_pass" id="input"><br>
    Re-enter your new password : <input type="password" name="re_new_pass" id="input"><br>
    <input type="submit" value="Change Password" class="btn">
    
    </form></center>
   </p>
	</div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="homepage.asp">Logout</a> <!-- end #footer --></div>
</div>

</body>
</html>


