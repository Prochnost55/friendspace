<title>Friends Space</title>
<%
contact_info=request.Form("contact_info")
address=request.Form("address")
edu_qua=request.Form("edu_qua")
%>
<% username = session("username")%> 
<% if len(username)=0 then
response.redirect("login.asp")
else%>
<% lastname = trim(session("lastname"))%>
<% Rn = session("Rn")%>
<% user = username&"_"&lastname&"_"&rn%>
<%	
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.CreateTextFile("C:\data\"&user&"\profile.txt")
			myfile.WriteLine("<table><tr><td>Address</td><td><textarea rows='5' cols='30' name='address' id='input'>"&address&"</textarea></td></tr>")
			myfile.WriteLine("<tr><td>Contact Info</td><td><textarea rows='5' cols='30' name='contact_info' id='input'>"&contact_info&"</textarea></td></tr>")	
			myfile.WriteLine("<tr><td>Educational Qualification</td><td><textarea rows='5' cols='30' name='edu_qua' id='input'>"&edu_qua&"</textarea></td></tr></table>")		
			myfile.close
			
			
%>
	<%	
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.CreateTextFile("C:\data\"&user&"\profile_show.txt")
			myfile.WriteLine("<table><tr><td>Address</td><td><textarea rows='5' cols='30' name='address' id='input' readonly>"&address&"</textarea></td></tr>")
			myfile.WriteLine("<tr><td>Contact Info</td><td><textarea rows='5' cols='30' name='contact_info' id='input'readonly>"&contact_info&"</textarea></td></tr>")	
			myfile.WriteLine("<tr><td>Educational Qualification</td><td><textarea rows='5' cols='30' name='edu_qua' id='input'readonly>"&edu_qua&"</textarea></td></tr></table>")		
			myfile.close
'			end if
			'response.Redirect("user.asp")
%>
<style>
body{
	background:lightgreen;
	}
#text{
	font:32px gabriola;
	border:2px solid green;
	height:20%;
	width:40%;
	margin-top:7%;
	border-radius:8px;
	color:green;}
	.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#FFF);
	}
.btn{
	display:inline-block;
	padding:5px 10px;
	font-size:19px;
	font-weight:bold;
	font-family:gabriola;
	line-height:18px;
	color:Darkgreen;
	text-shadow:0 1px 1px rgba(255,255,255,.5);
	background-color:yellow;
	background-repeat:no-repeat;
	border:1px solid darkgreen;
	cursor:pointer;
	border-radius:6px;
	-webkit-box-shadow:0 1px 0 rgba(255,255,255,.5);
	box-shadow:0 1px 0 rgba(255,255,255,.5);
	visibility:visible;
	display:inline-block;}
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
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	margin-top:10px;
	margin-bottom:10px;
	}
</style>
<center>
<div id="text">Profile updated successfully
<form action="profile.asp">
<input type="submit" class="btn" value="Back to profile">
</form></div></center>
<%end if%>