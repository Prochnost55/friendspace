<title>Friend Space</title><%
reply = server.HTMLEncode(request.Form("Reply"))
Fname = request.Form("Fname")
Lname = request.Form("Lname")
num = request.Form("num")
user = session("user")
Suser = session("Suser")
%>
<%
		  	Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile("C:\data\"& Suser &"\chat\Chat_"&user&".txt", 8, 1)
			
			myfile.writeline("<div id='send'>"& reply & "</div>")
			MyFile.close
%>
			
<%
	  		Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Mf=Fileobj.openTextFile("C:\data\"& user &"\chat\Chat_"&Suser&".txt", 8, 1)
			
			mf.writeline("<div id='rec'>"& reply & "</div>")
			MF.close
%>
<%response.Redirect("chatpage.asp?Fname="&fname&"&lname="&lname&"&num="&num)%>