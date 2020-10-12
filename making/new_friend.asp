<% 
	'fname=trim(request.Form("1stname"))
	'lname=trim(request.Form("Lname"))

	
'dim objConn, strConn, objRs
'set objConn = Server.CreateObject("ADODB.Connection")
'strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
'		"C:\Database\db2.mdb"
'objConn.Open strConn
'Set objRS = Server.CreateObject("ADODB.RecordSet")
'objRS.Open "Friend", objConn, 2,2
'objRS.AddNew
'objRS("Name")=Request.Form("1stname")
'objRS("username")=Request.Form("username")
'objRS("Last_name")=Request.Form("Lname")
'objRS("Password")=Request.Form("Password")
'objRS("Sex")=Request.Form("Sex")
'objRS("Dob")=Request.Form("dob")
'objRS("Contact")=Request.Form("Contact")
'objRS.Update
'num =objRS("user_regno")
'objRS.Close
%>
<%
'set MyFileObject=server.CreateObject("Scripting.FileSystemObject")
'path = server.MapPath("data")
'MyFileObject.CreateFolder ( path & "\" & Fname & "_" &lname&"_"&num)
'MyFileObject.CreateFolder ("c:\data\"& Fname & "_" &lname&"_"&num &"\chat")
session("IDcrt") = "True"
response.redirect("homepage.asp")
%>

