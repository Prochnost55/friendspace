<% username = session("username")%>
<% uname = session("uname")%>
<% if len(username)=0 then
response.redirect("login.asp")
else%>

<% lastname = trim(session("lastname"))%>
<% Rn = session("Rn")%>
<% sex = session("sex")%>


<html>
<head>

<title>Friend Space</title>
<style type="text/css"> 

@import url("a.css");


</style><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.thrColLiqHdr #sidebar2, .thrColLiqHdr #sidebar1 { padding-top: 30px; }
.thrColLiqHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]--><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body class="thrColLiqHdr">

<div id="container">
 <div id="header">
  <% profilePic = ("C:\inetpub\wwwroot\Project\user_profile_pic\"&user&".jpg")
 			set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 			if MyFileObject.FileExists(profilePic) Then %>
				<img src='<%response.Write("user_profile_pic\"&user&".jpg")%>' alt="b.jpg" name="photo" border="2" id="photo">
			<%else%>
			 <img src='<%response.Write("user_profile_pic\"&sex&".jpg")%>' alt="b.jpg" name="photo" border="2" id="photo">
			<%end if%> <span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
   <div id="header_opt">
  <form action="friend_profile1.asp" method="post" onSubmit="namex()">
  <input type="text" id="input" name="name1" align="left" >
  <input type="hidden" id="1stname" name="Fname"value="" align="left" >
  <input type="hidden" id="lstname" name="Lname"value="" align="left" >
  <input type="submit" value="Search" class="button">
  
  </form><a href="logout.asp">Logout</a></div>
  </div>
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
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open uname, objConn
Do While not objRS.EOF
	if objrs("acc_req") = ("true") then
		if objrs("frn_req") = ("true") then 
 'if objrs("acc_req") = "false" then
' 	
' 		objrs.movenext
'		if objrs.eof then
'			response.Write("no friend")
'			objRS.Close
'		end if
' end if
' 
	n=n+1
Response.Write("<a href=chatpage.asp?fname=" & objRS("name") & "&amp;lname=" &trim(objRS("last_name"))& "&amp;num="&objRS("user_regno") &">"& n & ". " & objRS("Name") & " " &objRS("Last_name") & "</a>")
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
<div id="maincontent">

<% 
dim objConn, strConn, objRs
set objConn = Server.CreateObject("ADODB.Connection")
strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
		"C:\Database\db2.mdb"
objConn.Open strConn
Set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend" ,objConn
if objrs("user_regno") = rn then
objrs.movenext
end if
%>
</head>



<table  id="table" cellspacing="10px">
 <tr id="tr">
    	
    	<td>Name</td>
       
        <td>Dob</td>
        
        <td>Sex</td>
		
        <td>Contact info</td>
    </tr>
<% While NOT objRS.EOF %>


 <tr>
 
 	
 	<td id="td"> <%=objRS("Name") & " " &objRS("Last_name")%></td>
    
    <td> <%=objRS("Dob")%></td>
    
	<td> <%=objRS("Sex")%></td>

<td> <%=objRS("Contact")%></td>  
<td><form action="friend_req.asp" method="post" >
<input type="hidden" value="<%=objrs("name")%>" name="Fname">
<input type="hidden" value="<%=objrs("last_name")%>" name="lname">
<input type="hidden" value="<%=objrs("user_regno")%>" name="Regno">
<input type="hidden" value="<%=objrs("username")%>" name="RUname">
<input type="submit" class="button" value="Send Request">

</form>  
 </tr>
 <%
 objRS.MoveNext
 wend
 objRS.Close
 objConn.Close
 Set objConn=Nothing
 Set objRS=Nothing
 %>
</table>

</div> 
	
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

<%end if%>