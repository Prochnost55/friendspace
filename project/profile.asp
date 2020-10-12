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
	
</style><body class="thrColLiqHdr">

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
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li_act"><u>Profile</u></div>
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


%>
  </div>
  <div id="mainContent">
 
  <%  
	objrs.movefirst
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
  
  <%		file_path = server.mappath("data")
			Myfile = (file_path&"\"&user&"\profile.txt")
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
			Set Myfile=Fileobj.OpenTextFile(file_path&"\"&user&"\profile.txt")
			do until Myfile.AtEndOfStream
			Response.Write(Myfile.Readline)
			loop
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


</div>
<%end if%>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>

</html>

<%end if%>



