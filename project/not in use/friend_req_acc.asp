<%uname = session("Uname")%>
<%
	username = session("username")
	lastname = session("lastname")
	rn = session("rn")
%>
<%
fname=request.Form("senderFname")
lname=request.Form("senderlname")
regno=request.Form("regno")
Runame=request.Form("Runame")
%>
<%
'response.Write(regno)
%>
<%
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open uname,objConn, 2,2
do until  objrs.eof
	if cstr(regno) = cstr(objrs("user_regno")) then
		objrs("acc_req") = "true"
		objrs.update
		else
		response.Write("false")	
	end if 
	objrs.movenext
loop
		

	objRs.close

objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
<%
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open Runame,objConn, 2,2
do until  objrs.eof
	if cstr(rn) = cstr(objrs("user_regno")) then
		objrs("frn_req") = "true"
		objrs.update
		else
		response.Write("false")	
	end if 
	objrs.movenext
loop
		

	objRs.close

objConn.Close
Set objRS = Nothing
Set objConn = Nothing
response.Redirect("user.asp")
%>