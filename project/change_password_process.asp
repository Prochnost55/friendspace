<% rn = session("rn")%>
<title>Friend Space</title><div id="body"><%
Dim objConn, objRS, Rn

set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& server.mappath("db2.mdb")
Set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend",objConn, 2,2
do until objRS.EOF
	if objRs("user_regno")= Rn Then
		if objRS("Password") = request.Form("old_pass") then
			if request.Form("new_pass") = request.Form("Re_new_pass") Then
	  			objRS("Password")=request.form("new_pass")
	 			 objRS.Update
				flag = 1
			end if
		
	  	end if
	
	
	 End If
	objRS.MoveNext
Loop
objRs.close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
<% 
if flag = 1 then
response.Redirect("user_settings.asp?ch=y")
else
response.Redirect("user_settings.asp?ch=n")
end if
%>