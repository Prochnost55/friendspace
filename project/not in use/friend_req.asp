<%uname = session("Uname")%>
<%
	username = session("username")
	lastname = session("lastname")
	rn = session("rn")
%>
<%
fname=request.Form("Fname")
lname=request.Form("lname")
regno=request.Form("regno")
Runame=request.Form("Runame")
%>
<%Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open uname,objConn, 2,2
objrs.addnew	
		objRS("user_regno") = regno
		objrs("name") = fname
		objrs("Last_name") = lname
		objrs("frn_req") = "false"
		objrs("acc_req") = "true"
		objrs("username") = Runame
		objRS.Update

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
objrs.addnew	
		objRS("user_regno") = rn
		objrs("name") = username
		objrs("Last_name") = lastname
		objrs("acc_req") = "false"
		objrs("frn_req") = "true"
		objrs("username") = uname
		objRS.Update

	objRs.close

objConn.Close
Set objRS = Nothing
Set objConn = Nothing
server.Transfer("friend_profile1.asp")
%>