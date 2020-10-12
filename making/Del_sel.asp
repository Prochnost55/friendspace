<html>
<head>
<title>Friend Space</title>
<style>
body{
	background:lightGreen;
}
#body{
	border:1px solid darkgreen;
	border-radius:4px;
	font:bold 20px Gabriola;
	color:darkgreen;
	font-weight:700;
	margin-top:80px;
	margin-left:400px;
	margin-right:400px;
	text-align: center;
	}

p{
	font:bold 40px Gabriola;
	}
#link{
	color:#030;}
#link:hover{
	color:#060;}
#link:active{
	color:#0C3;}
</style>
</head>

<body bgcolor="#FFFFFF" text="Black"><div id="body">
<p>Select Record to Delete</p>
<%
Dim objConn
Dim objRs
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
			"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend", objConn
Do While not objRS.EOF
Response.Write("<br>")
Response.Write("<a id='link' href=""del_entry.asp?ID="& objRS("Rn") &""">")
Response.Write(objRS("Name")& " " &objRS("Last_name"))
Response.Write("</a>")
objRS.MoveNext
Loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%></div>
</body>
</html>
