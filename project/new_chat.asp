<html>
<head>
<title>Friend Space</title>
</head>
<%
reply = server.HTMLEncode(request.Form("Reply"))
Fname = request.Form("Fname")
Lname = request.Form("Lname")
num = request.Form("num")
user = session("user")
Suser = session("Suser")

response.Write(reply&"<br>"&fname &"<br>"& Lname &"<br>"& Num &"<br>"& user &"<br>"& suser)
			  file_path = server.mappath("data")
		  	Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.createTextFile(file_path& "\"& Suser &"\chat\Chat_"&user&".txt")
			myfile.writeline("<div id='MainContent'>")
			myfile.writeline("<div id='send'>"& reply & "</div>")
			MyFile.close


	  		Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Mf=Fileobj.createTextFile(file_path& "\"& user &"\chat\Chat_"&Suser&".txt")
			mf.writeline("<div id='MainContent'>")
			mf.writeline("<div id='rec'>"& reply & "</div>")
			MF.close

response.Redirect("chatpage.asp?Fname="&fname&"&lname="&lname&"&num="&num)%>
<body>
</body>
</html>
