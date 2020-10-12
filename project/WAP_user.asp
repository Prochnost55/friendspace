<% username = session("username")%> 
<% uname= session("uname")%>
<% lastname = trim(session("lastname"))%>
<% rn=session("rn")%>
<% user = username&"_"&lastname&"_"&rn%>
<% sex=session("sex")%>
<html>
<head>
<title>Friends Space</title>
<style type="text/css"> 
@import url("a.css");

#POST{
	text-indent:30px;
	font-family:"Comic Sans MS";
	font-size:20px;
	font-weight:lighter;
	color:rgba(10,10,10,0.5);}
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
        <div id="li_act"><u>Write a Post</u></div>
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
 Myfile = (server.mappath("data") &"\"& user &"\post.txt")
  set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 if MyFileObject.FileExists(Myfile) Then 

  response.write("<h1>Your last post was </h1><p>") 
  
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(myfile)
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close			
	

			response.write("</p>")
    
	 
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			WAP = server.mappath("WAP.txt")
			Set Myfile=Fileobj.OpenTextFile(WAP)
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close			
	
	response.write("</div>")
  else
 
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile(WAP)
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			wend
			MyFile.close			
		
    response.write("</div>")
   end if%>
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

