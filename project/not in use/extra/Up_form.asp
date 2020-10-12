<style>
body{
	background:lightGreen;
	}
#body{
	border:1px solid DarkGreen;
	font:bold 40px Gabriola;
	color:darkgreen;
	font-weight:700;
	margin-top:180px;
	margin-left:500px;
	margin-right:500px;
	text-align: center;
	border-radius:4px;}
.btn{
	display:inline-block;
	padding:5px 10px;
	font-size:19px;
	font-weight:bold;
	font-family:gabriola;
	line-height:18px;
	color:Darkgreen;
	text-shadow:0 1px 1px rgba(255,255,255,.5);
	background-color:yellow;
	background-repeat:no-repeat;
	border:1px solid darkgreen;
	cursor:pointer;
	border-radius:6px;
	-webkit-box-shadow:0 1px 0 rgba(255,255,255,.5);
	box-shadow:0 1px 0 rgba(255,255,255,.5);
	visibility:visible;
	display:inline-block;
}
 
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#FFF);
	}
.btn:hover{
	text-decoration:none;
	background-color:#CF0;
	background-image:-moz-linear-gradient(#FF0,#FFF);
	background-image:-ms-linear-gradient(#FF0,#FFF);
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#CC3,#FF0);
	background-image:-o-linear-gradient(#FF0,#FFF);
	background-image:linear-gradient(#FF0,#FFF);
	filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);
	border-color:#030;
	color:#030;}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	}
.btn:active{
	border-color:#bbb;
	background-image:none;
	-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5)
	}
</style>
<title>Friend Space</title><div id="body"><%
Dim objConn, objRS, Rn
Rn = Request.Form("Rn")
Rn = Cstr(Rn)
set objConn = Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
				"C:\Database\db2.mdb"
Set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend",objConn, 2,2
do until objRS.EOF
	if objRs("Rn")= cstr(Rn) Then
	  objRS("Name")=Request.form("Name")
	  objRS("Dob")=Request.form("Dob")
	  objRS("Address")=Request.Form("Address")
	  objRS("Class")=Request.form("Class")
	  objRS("House")=Request.form("House")
	  objRS("Hobbies")=Request.form("Hobbies")
	  objRS("Contact")=Request.Form("Contact")
	objRS.Update
		Response.Write("Record updated")
	End If
	objRS.MoveNext
Loop
objRs.close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
<form action="Homepage.asp">
<input type="submit" value="Home page" class="btn" />
</form></div>