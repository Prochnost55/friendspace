<% username = session("username")%>
<% uname = session("uname")%>
<% if len(username)=0 then
response.redirect("login.asp")
else%>
<% Fname = Request.QueryString("Fname")
   lname = Request.QueryString("lname")
   num = Request.QueryString("num")
   session("Suser") = Fname &"_"&Lname&"_"&num
   Suser = session("Suser")
   sender_user = Fname & " " & lname  
%>


<% lastname = trim(session("lastname"))%>
<% Rn = session("Rn")%>
<% sex = session("sex")%>
<% session("user") = username&"_"&lastname&"_"&rn
	user = session("user")%>
<% Rec_user = username & " " & lastname %>

<html>
<head>

<title>Friend Space</title>
<style type="text/css"> 

@import url("a.css");

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
	margin: 7% 24% 0 23.5%;
	background-color:lightgreen;
	border-top:1px solid darkgreen;
	border-right:1px solid darkgreen;
	border-left:1px solid darkgreen;
	border-radius:8px;
	padding-left:10px;
	padding-right:10px;
	padding-bottom:10px;
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
.rec{
	color:#936;
	float:left;
	width:200px ;
	margin:10px;
	background-color:lightgreen;
	border:2px solid #936;
	font-size:20px;
	border-radius:4px;
	font-weight:bold;
	}
.send{
	margin:10px;
	background-color:lightgreen;
	border:2px solid #06F;
	border-radius:4px;
	float:right;
	font-size:20px;
	font-weight:bold;
	color:#06F;
	
	width:200px ;
	}
#rec{
	color:#936;
	float:left;

	
	background-color:lightgreen;
	font-size:20px;
	position:absolute;
}
#send{
	
	background-color:lightgreen;

	
	float:right;
	font-size:20px;

	color:#06F;
	
	
	}
#main{
	color:#000;
	font-size:36px;
	font-weight:bold;
	}
#no_con{
	
	font-size:24px;
	text-align:center;}
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
	n = n + 1
	if objrs("username") = uname then
		objrs.movenext
		flag = 1
		n = n - 1
	end if
	
	if flag <> 1 then
		Response.Write("<a href=chatpage.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& n & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
		Response.Write("<br>")
		objRS.MoveNext
	end if
Loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing

%>
<% if user = suser then
response.write("</div><div id='no_con'>You can't chat with yourself.........!!")
else%>
<%
  file_path = server.mappath("data")
 Myfile = file_path&"\"& user &"\chat\Chat_"&suser&".txt"

 set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 if MyFileObject.FileExists(Myfile) Then 
%>
  </div>
  <div id="main"><center>Conversation</center></div><center><hr width="400px" color="#993399"></center>
  
 <div class="rec"><%=rec_user%></div><div class="send"><%=sender_user%></div></h3>


 <%
		  	Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(file_path& "\"& user &"\chat\Chat_"&suser&".txt",1, 8)
			while NOT Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			Response.Write("<br>")
			wend
			MyFile.close
  %>

		<center><hr width="400px" color="#993399"></center>
       <form action="chat_process.asp" method="post">
        <input type="text" id="input" size="50" name="reply" autocomplete="off">
         <input type="hidden" id="input" size="50" name="Fname" align="right" value="<%=Fname%>">
          <input type="hidden" id="input" size="50" name="Lname" align="right" value="<%=Lname%>">
          <input type="hidden" id="input" size="50" name="num" align="right" value="<%=num%>">
          <input type="submit" value="Reply" class="btn" align="right">
        </form></div>  
 
 <%
else
 %>
 </div>
 <div id="no_con">There is no Conversation yet.......!!<br>
 Spark a conversation....:-)<br></div>
 <hr width="400px" color="#993399">
       <form action="new_chat.asp" method="post">
        <input type="text" id="input" size="50" name="reply" autocomplete="off">
         <input type="hidden" id="input" size="50" name="Fname" align="right" value="<%=Fname%>">
          <input type="hidden" id="input" size="50" name="Lname" align="right" value="<%=Lname%>">
          <input type="hidden" id="input" size="50" name="num" align="right" value="<%=num%>">
          <input type="submit" value="Reply" class="btn" align="right">
        </form>
 <%
 End if
end if 
 %>
 
	
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>
 
</html>

<%end if%>