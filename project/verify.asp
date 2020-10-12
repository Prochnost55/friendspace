<%
	Fullname = request.form("fname")
	Req_username = request.form("username")
	password = request.form("password")
	sex	= request.form("sex")
	dob = request.form("dob")
	contact = request.form("contact")
%>

<%
	chop = InStr(fullname," ")
	if chop <> 0 then
	chop = chop-1
	Fname = Left(fullname,chop)
	namelen = len(fullname)
	Lname = mid(fullname,chop+2,namelen-chop-1)
	else
	Fname = fullname
	lname = " "
	end if
%>
<%
	check = IsDate(dob)
	if check = false then
		response.redirect("mainpage.asp?message=dob")
	else
%>
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
	objrs("sex")= sex
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
	response.redirect("mainpage.asp?message=acc_success")
%>
<%
		end if	
%>
