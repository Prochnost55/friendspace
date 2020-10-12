<title>Friend Space</title><%
username = trim(cstr(lcase(session("username"))))
lastname = trim(cstr(lcase(session("lastname"))))
Dim objConn
Dim objRS
Dim Rn
Rn = Request.form("num")
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
				"C:\Database\db2.mdb"
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
  MyfileObject.DeleteFolder("c:\data\" & username&"_"&lastname&"_"&rn)
Response.Redirect("Homepage.asp")

%>