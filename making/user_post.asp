<title>Friend Space</title><%
username = session("username")
Lastname = session("lastname")
rn = session("rn")
user = username&"_"&lastname&"_"&rn
post = server.HTMLEncode(Trim(request.form("POST")))

						Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
						Myfile = ("C:\data\"&user&"\Comment.txt")
				 		set MyFileObject = server.CreateObject("Scripting.filesystemobject")
if MyFileObject.FileExists(Myfile) Then 		
						Fileobj.deleteFile("C:\data\"&user&"\Comment.txt")
						Set Myfile=Fileobj.CreateTextFile("C:\data\"&user&"\post.txt", true)
						myfile.writeline("<div id='post'>"&post&"</div><hr width='500' color='darkgreen'>")
						myfile.close
						response.Redirect("User.asp")
else
						Set Myfile=Fileobj.CreateTextFile("C:\data\"&user&"\post.txt", true)
						myfile.writeline("<div id='post'>"&post&"</div><hr width='500' color='darkgreen'>")
						myfile.close
						response.Redirect("User.asp")			
end if 
%>