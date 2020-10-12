<% username = session("username")%>
<% uname= session("uname")%>
<% if len(username)=0 then
response.redirect("login.asp")
else%>
<% lastname = trim(session("lastname"))%>
<% Rn = session("Rn")%>
<% LastAccessTime = Request.Cookies("LastTime")%>
<% LastAccessDate = Request.Cookies("LastDate")%>
<% user = username&"_"&lastname&"_"&rn%>
<% sex= session("sex")%>
<html>
<head><title>Friend Space</title>
<style>
@import url("a.css");
</style>
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
       	<div id="li"><a href="Play_user.asp?game=1">Play game</a></div>
       	<div id="li_act"><u>Chat</u></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
     </ul>
  </div>
  <div id="sidebar2"><h3>Chat with</h3>
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
		Response.Write("<a href=chatpage.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& num & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
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
  <h1>Chat with anyone whom you want to<br>
  	Just click on the name -------&gt;</h1>
  <p> 
</div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>
</html>
<%end if%>