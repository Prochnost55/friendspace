<%
Ruser = request.Form("hide")
fname = request.form("fname")
lname = request.form("lname")
num = request.form("num")
username = session("username")
lastname = session("lastname")
rn = session("rn")
user = username&"_"&lastname&"_"&rn
if Ruser = "" then
Ruser = user
end if
comment = Trim(request.form("cmnt"))
%>
<%
 Myfile = ("C:\data\"&Ruser&"\comment.txt")
 set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 if MyFileObject.FileExists(Myfile) Then 
%><title>Friend Space</title>

<%	
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile("C:\data\"&Ruser&"\comment.txt", 8 ,1)
			myfile.WriteLine("<div id='cmnt'><font color='#09f'>"&Username&" : </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"&comment&"</div>" )	
			myfile.close
			response.Redirect("t_userpage2.asp?fname="&Fname&"&lname="&lname&"&num="&num)
%>
<%else%>

<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Mf=Fileobj.CreateTextFile("C:\data\"&Ruser&"\Comment.txt")
			mf.writeline("<h3>Comments by</h3><div id='cmnt'><font color='#09f'>"& Username&" : </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"&comment&"		</div>")
			mf.close
			response.Redirect("t_userpage2.asp?fname="&Fname&"&lname="&lname&"&num="&num)
end if
%>