<%
	dim objConn, strConn, objRs
	set objConn = Server.CreateObject("ADODB.Connection")
	db_path = server.mappath("db2.mdb")
	
	strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path
	'		"C:\Database\db2.mdb"
	objConn.Open strConn
	Set objRS = Server.CreateObject("ADODB.RecordSet")
	objRS.Open "Friend", objConn, 2,2
	objRS.AddNew
	objRS("Name")=Fname
	objRS("username")=Req_username
	objRS("Last_name")=Lname
	objRS("Password")=Password
	objRS("Dob")=DOB
	objRS("Contact")=Contact
	objRS.Update
	num =objRS("user_regno")
	objRS.Close
	objconn.close
	set objrs = nothing
	set objconn = nothing
%>
<%
	set MyFileObject=server.CreateObject("Scripting.FileSystemObject")
	path = server.MapPath("data")
	MyFileObject.CreateFolder ( path & "\" & Fname & "_" &lname&"_"&num)
	MyFileObject.CreateFolder ( path & "\" & Fname & "_" &lname&"_"&num & "\chat")
	session("IDcrt") = "True"
	response.redirect("login.asp?message=acc_success")
%>