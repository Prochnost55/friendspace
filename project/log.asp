<title>Friend Space</title><%  
	Dim objConn, objRS,  Flag
	Uname = Request.Form("Uname")
	Password = Request.Form("Upass")
	set objConn =Server.CreateObject("ADODB.Connection")
	db_path = server.mappath("db2.mdb")
	objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
	set objRS = Server.CreateObject("ADODB.RecordSet")
	objRS.Open "Friend", objConn
	Flag=0
	Do until objRS.EOF
		If lcase(objRS("username"))=lcase(Uname) Then
			If(objRS("Password")) = Password Then
					username= objRS("Name")
					flag = 1
					usernametest= username
					length = len(usernametest)
					username = ucase(left(username,1))
					usernametest = lcase(mid(usernametest,2)) 
					username = username & usernametest
					
					lastname = lcase(objRS("Last_name"))
					Rn = objRS("user_regno")
					sex = objrs("sex")
					session("uname")= uname
					session("Rn") = Rn
					session("sex") = sex
					session("username") = trim(username)
					session("lastname") = trim(lastname)
					
					session("user") = (username&"_"&lastname&"_"&rn)
					
					
			end if
			
		End if
	ObjRS.MoveNext
	loop
%>
<%
if flag=1 then
	response.Redirect("user.asp")			
else
	server.execute("login.asp")
	response.Write("<p id='a'>Incorrect username or password</p>")
end if
%>
