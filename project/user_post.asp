<title>Friend Space</title><%
username = session("username")
Lastname = session("lastname")
rn = session("rn")
user = username&"_"&lastname&"_"&rn
post = server.HTMLEncode(Trim(request.form("POST")))

	Set Fileobj=Server.CreateObject("Scripting.FileSystemObject"					file_path = server.mappath("data")
	post_file = (file_path & "\" &user & "\post.txt")					cmnt_file = (file_path & "\" &user & "\comment.txt")
	Myfile = cmnt_file
	set MyFileObject = server.CreateObject("Scripting.filesystemobject")
if MyFileObject.FileExists(Myfile) Then 							Fileobj.deleteFile(cmnt_file)
	Set Myfile=Fileobj.CreateTextFile(post_file, true)					myfile.writeline("<div id='post'>"&post&"</div><hr width='500' color='darkgreen'>")
	myfile.close
	response.Redirect("User.asp")
else
	Set Myfile=Fileobj.CreateTextFile(post_file, true)
	myfile.writeline("<div id='post'>"&post&"</div><hr width='500' color='darkgreen'>")
	myfile.close
	response.Redirect("User.asp")			
end if 
%>