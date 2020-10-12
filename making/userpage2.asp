<title>Friends page</title><%
Dim objConn
Dim objRS
Dim Rn
username = Request.QueryString("ID")
response.Write(username)
'Set objConn = Server.CreateObject("ADODB.Connection")
'objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
'				"C:\Database\db2.mdb"
'Set objRS = Server.CreateObject("ADODB.RecordSet")
'objRS.Open "Friend", objConn, 2,3
'Do Until objRS.EOF
'	If Cstr(objRS("Rn"))=Cstr(Rn) Then
'	objRS.Delete
'	End If
'objRS.MoveNext
'Loop
'objRS.Close
'objConn.Close
'Set objRS = Nothing
'Set objConn = Nothing
'Response.Redirect("Homepage.asp")
%>