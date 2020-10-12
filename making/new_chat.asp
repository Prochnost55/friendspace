<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Friend Space</title>
</head>
<%
reply = server.HTMLEncode(request.Form("Reply"))
Fname = request.Form("Fname")
Lname = request.Form("Lname")
num = request.Form("num")
user = session("user")
Suser = session("Suser")
%>
<%
response.Write(reply&"<br>"&fname &"<br>"& Lname &"<br>"& Num &"<br>"& user &"<br>"& suser)
%>
<%
		  	Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.createTextFile("C:\data\"& Suser &"\chat\Chat_"&user&".txt")
			myfile.writeline("<div id='MainContent'>")
			myfile.writeline("<div id='send'>"& reply & "</div>")
			MyFile.close
%>
			
<%
	  		Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Mf=Fileobj.createTextFile("C:\data\"& user &"\chat\Chat_"&Suser&".txt")
			mf.writeline("<div id='MainContent'>")
			mf.writeline("<div id='rec'>"& reply & "</div>")
			MF.close
%>
<%response.Redirect("chatpage.asp?Fname="&fname&"&lname="&lname&"&num="&num)%>
<body>
</body>
</html>
