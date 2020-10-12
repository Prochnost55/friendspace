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
	fname = username
	lname = lastname
	num = rn
	end if
	comment = Trim(request.form("cmnt"))



	file_path = server.mappath("data")
	cmnt_file = (file_path & "\" &Ruser & "\comment.txt")
	set MyFileObject = server.CreateObject("Scripting.filesystemobject")
	if MyFileObject.FileExists(cmnt_file) Then 
response.write("<title>Friend Space</title>")


			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(cmnt_file, 8 ,1)
			myfile.WriteLine("<div id='cmnt'><font color='#09f'>"&Username&" "&lastname&" : </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"&comment&"</div>" )	
			myfile.close
			response.Redirect("t_userpage2.asp?fname="&Fname&"&lname="&lname&"&num="&num)

else


			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Mf=Fileobj.CreateTextFile(cmnt_file)
			mf.writeline("<h3>Comments by</h3><div id='cmnt'><font color='#09f'>"& Username&" "&lastname&" : </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"&comment&"		</div>")
			mf.close
			response.Redirect("t_userpage2.asp?fname="&Fname&"&lname="&lname&"&num="&num)
end if
%>