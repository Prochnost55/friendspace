<% Fname = Request.QueryString("Fname")
   lname = Request.QueryString("lname")
   num = Request.QueryString("num")
   Ruser = Fname & "_" & lname & "_" & num  
%>
	<% username = session("username")%> 
    <% uname = session("uname")%>
<% lastname = session("lastname")%>
<%rn= session("rn")%>
<% user = username&"_"&lastname&"_"&rn%>
<% sex=session("sex")%>

<html>
<head>
<title>Friend Space</title>
<style type="text/css"> 
@import url("a.css");

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
  <form action="friend_profile.asp" method="post">
  <input type="text" id="input" name="name1" align="left" >
  <input type="submit" value="About friend" class="button">
  
  </form><a href="logout.asp">Logout</a></div></div>
  <div id="sidebar1">
  
   <ul> <h3>Do something</h3>
    	<div id="li"><a href="user.asp">Home</a></div>
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
	n = n + 1
	if objrs("username") = uname then
		objrs.movenext
		flag = 1
		n = n - 1
	end if
	
	if flag <> 1 then
		Response.Write("<a href=t_userpage2.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& n & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
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
	Myself= file_path &"\"&Ruser&"\post.txt"
	set mfo=server.CreateObject("scripting.filesystemobject")
	if mfo.fileexists(myself) then %>
  <h1>The post by <%response.Write(Fname &" " &Lname)%> is </h1>
  <p> 
  
  <%
		  	Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(file_path&"\"& Ruser &"\post.txt")
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			Response.Write("<br>")
			wend
			MyFile.close
  %>
  <%

 Myfile = (file_path& "\" &Ruser&"\comment.txt")
 set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 if MyFileObject.FileExists(Myfile) Then 
%>
<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(file_path&"\"&Ruser&"\comment.txt",1)
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close	
%>
<h3>Leave a Comment : </h3>
	<form action="user_comment.asp" method="post">           
 	<input type="text" id="input" name="cmnt">
	<input type="hidden" value='<%=Ruser%>' name="hide">
   <input type="hidden" value='<%=fname%>' name="fname">
   <input type="hidden" value='<%=lname%>' name="lname">
   <input type="hidden" value='<%=num%>' name="num">
    <input type="submit" class="btn" value="comment">
	</form>
          

	</div>
<%else%>
         <h3>Leave a Comment : </h3>
	<form action="user_comment.asp" method="post">           
 	<input type="text" id="input" name="cmnt">
	<input type="hidden" value='<%=Ruser%>' name="hide">
    <input type="hidden" value='<%=fname%>' name="fname"><input type="hidden" value='<%=lname%>' name="lname"><input type="hidden" value='<%=num%>' name="num">
    <input type="submit" class="btn" value="comment">
	</form></div>
          
<%end if%>
  <%else%>
 <h1><%=Fname & " " & lname%> has not posted anything yet.</h1>
  <%end if%>
 <br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>

</html>


