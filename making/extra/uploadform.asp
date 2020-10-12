<% username = session("username")%> 
<% lastname = session("lastname")%>
<% Rn = session("Rn") %>
<% user = username&"_"&lastname&"_"&rn%>
<% sex = session("sex")%>
<html>
<head>

<title>Friend Space</title>
<style type="text/css"> 
@import url("a.css");
body  {
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background: #666666;
	margin: 0; 
	padding: 0;
	text-align: center; 
	color: #000000;
	background-color: lightgreen;
}
#a	{
	color:red;
	text-align:center;}
.thrColLiqHdr #container { 
	width: 80%;  
	background: lightgreen;
	margin: 0 auto; 
	border: 2px solid darkgreen;
	
	border-radius:8px;
	text-align: left;}
.thrColLiqHdr #header { 
	background:#393; 
	padding: 0 10px;
	border:1px solid #393;
	border-radius:4px;
	margin-bottom:10px;
	text-align:left;

} 
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
	margin: 0 24% 0 23.5%;
	background-color:lightgreen;
	border:1px solid darkgreen;
	border-radius:8px;
	font-size:24px;
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
#footer a:link{
	color:green;}
#footer a:visited{
	color:green;}
#footer a:hover{
	color:darkgreen;} 
#header_opt a:link {
	color:white;
	}
#header_opt a:visited {
	color:white;
	}
#header_opt a:hover {
	color:#666;
	}
#sidebar2 a:link{
	color:green;}
#sidebar2 a:visited{
	color:green;}
#sidebar2 a:hover{
	color:#36C;} 
#sidebar1 a:link{
	color:green;}
#sidebar1 a:visited{
	color:green;}
#sidebar1 a:hover{
	color:#009;} 
#input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	font-style:italic;
	cursor:text;
	}
#input:focus{
	border:2px solid green;}
	
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
			<%end if%><span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
  <div id="header_opt"><form action="friend_profile.asp" id="form"><input type="text" id="input" name="rn"value="" align="left"></form><a href="logout.asp">Logout</a></div>

  </div>
  <div id="sidebar1">
  
    <ul> <h3>Do something</h3>
    	
    	<li><a href="user.asp">Home</a>
        <li><a href="user_settings.asp">Settings</a>
  		<li><a href="WAP_user.asp">Write a Post</a>
        <li><a href="chat.asp">Chat</a>
        <li><a href="play_user.asp">Play game</a>
        </ul>
  </div>
 <div id="sidebar2">
 	<ul>
    	<li><a href="Change_password.asp">Change Password</a>
       
       
        <li><a href=del_entry.asp?ID=<%response.Write(Rn)%>>Delete Account</a>
      </ul>
 </div>
  <div id="mainContent">
<%

Dim strMessage, strFolder
Dim httpref, lngFileSize
Dim strExcludes, strIncludes

	'-----------------------------------------------
	'This is the complete upload file program.
	'This is intended to upload graphics onto the web and
	'to delete them if required.
	'Set up the configurations below to define which
	'directory to use etc, then set the permissions on
	'the directory to 'Change' i.e. Read/Write
	'-----------------------------------------------

	%>
	<!-- #include file = "config.asp" -->	
	<%
	
	strMessage = Request.QueryString ("msg")
	
'--------------------------------------------
Sub main()

	%>
	<html>
	<head>
	<title>File Upload</title>
	
	</head>
	<body>
	<%

	if Request.Form ("AskDelete") = "Delete" then	'ask if to delete
		call askDelete(Request.Form("fileId"))
	elseif Request.Form("delete") = "" then			'display at start up
		call displayform()
		call BuildFileList(strFolder)
	elseif Request.Form ("delete") = "Yes" then		'make deletion
		call delete(Request.form("fileId"))
		call displayForm()
		call BuildFileList(strFolder)
	elseif Request.Form ("delete") = "No" then		'do not make deletion
		call displayForm()
		call BuildFileList(strFolder)
	end if

	%>
	</body>
	</html>
	<%

end sub


'--------------------------------------------
'Displays the form to allow uploading
Sub displayForm()

Dim i, tempArray

	'Results box
	if strMessage <> "" then
	%>
	<table  align="center" cellspacing="0" cellpadding="2">
	<tr>
		<td class="text"><%=strMessage%></td>
	</tr>
	</table>
	<%
	end if


	%>
	

	<form action="uploadfile.asp" method="post" enctype="multipart/form-data">

		<table border="0" width="320" align="center" bgcolor="lightgreen" cellspacing="0" cellpadding="2">
		<tr>
			<td colspan="2" class="text"><h1>Select the file to upload</h1></td>		
		</tr>
		<tr>
			<td class="text">
				<b>File: </b><input type="file" name="file1" /><br/>	
			</td>
		</tr>
		
		<tr>
			<td class="text">
				Example Name : <input type="text" name="txtName" id="input" />
			</td>
		</tr>

		
		<tr>
			<td align="center">
				<input type="submit" value="Upload" name="submit" class="btn">
			</td>
		</tr>		
	</table>
		
	</form>

<%
end sub


'--------------------------------------------
'Builds a list of files on the directory
'INPUT : the folder to be used
Sub BuildFileList(strFolder)

    Dim oFS, oFolder, intNoOfFiles, FileName

    Set oFS = Server.CreateObject("Scripting.FileSystemObject")
    Set oFolder = oFS.getFolder(strFolder)
    %>
   
    <%
	intNoOfFiles = 0

    For Each FileName in oFolder.Files	
		%>
		<tr>		
			<!--<form Name="frmDelete" method="post" action="requestsniffer.asp">-->
			<center><form Name="frmDelete" method="post" action="<%=Request.ServerVariables("PATH_INFO")%>">
				<td class="text">
					<a href="<%=httpref & "/" & mid(FileName.Path,instrrev(FileName.Path,"\")+1)%>" target="_blank"><%=mid(FileName.Path,instrrev(FileName.Path,"\")+1)%></a>
				</td>
				<td class="text">
					<input type="hidden" name="fileId" value="<%=mid(FileName.Path,instrrev(FileName.Path,"\")+1)%>" class="btn">
					<input type="submit" name="AskDelete" value="Delete" class="btn">
				</td>
			</form></center>			
		</tr>
		<%
		intNoOfFiles = intNoOfFiles + 1
    Next
    
    Set oFolder = nothing
   
	if intNoOfFiles = 0 then
		%>
		
		<%
	end if
  
	%>
    </table>
    <%    
   
End Sub


'--------------------------------------------
'Ask if to delete this file
'INPUT : the file name to be deleted, less the path
Sub askDelete(strFileName)

	%>
	<html>
	<head>
	<title>Delete file y/n?</title>
	<link rel="stylesheet" href="upload.css">
	</head>
	<body>
	
	<form name="frmConfirmDelete" method="post" action="<%=Request.ServerVariables("PATH_INFO")%>">
	<table border="0" align="center">
		<tr>
			<td class="text">
				Are you sure you wish to delete <b><%=strFileName%></b> ?
			</td>
		</tr>
		<tr>
			<td class="text" align="center">
				<input type="hidden" name="fileId" value="<%=strFileName%>">
				<INPUT type="submit" value="Yes" name="Delete" class="btn">
				&nbsp;&nbsp;
				<INPUT type="submit" value="No" name="Delete" class="btn">
			</td>
		</tr>
	</table>
	</form>

	</body>
	</html>
	<%

end sub

'--------------------------------------------
'Deletes the file given the full file name strFileName
'INPUT : the file name to be deleted, less the path
Sub delete(strFileName)

	'Response.write strFileName 
	'Response.End 

	Dim oFS, a

    Set oFS = Server.CreateObject("Scripting.FileSystemObject")
	a = oFS.DeleteFile(strFolder & "\" & strFileName)

	Set oFs = nothing
	Set a = nothing	
	
End sub


'--------------------------------------------
call main()

%>
	</div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>

</html>
