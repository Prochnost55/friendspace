<title>Friend Space</title><%
	username = session("username")
	lastname = session("lastname")
	dim objConn
	Dim objRS
	Dim Rn
	Rn = Request.form("num")
	Set objConn = Server.CreateObject("ADODB.Connection")
	objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& server.mappath("db2.mdb")
	set objRS = Server.CreateObject("ADODB.RecordSet")

	objRS.Open "Friend", objConn, 2,3
	Do Until objRS.EOF
		If Cstr(objRS("user_regno"))=Cstr(Rn) Then		
		objRS.Delete
		End If
	objRS.MoveNext
	Loop
	objRS.Close
	objConn.Close
	Set objRS = Nothing
	Set objConn = Nothing

	Set MyFileObject=Server.CreateObject("Scripting.FileSystemObject")
	MyfileObject.DeleteFolder(server.mappath("data") & "\" & username&"_"&lastname&"_"&rn)
	response.redirect("mainpage.asp?message=acc_del_success")
	%>

<%session.abandon()%>