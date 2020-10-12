<%
Dim objConn, objRS, Rn, Flag
Rn = Request.QueryString("Rn")
Rn = Cstr(Rn)
					Rntest= Rn
					length = len(Rntest)
					Rn = ucase(left(Rn,1))
					Rntest = lcase(mid(Rntest,2)) 
					Rn = Rn & Rntest
set objConn =Server.CreateObject("ADODB.Connection")
objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
				"C:\Database\db2.mdb"
set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend", objConn
Flag=0
Do until objRS.EOF
	If Lcase(Trim(objRS("name")))= lcase(Trim(Rn)) Then
	varRn=objRS("Rn")
	varName=objRS("Name")
	varLName=objRS("Last_name")
	varAddress=objRS("Address")
	varDob=objRS("Dob")
	varClass=objRS("Class")
	varHouse=objRS("House")
	varHobbies=objRS("Hobbies")
	varContact=objRS("Contact")
	
	flag = 1
	end if
ObjRS.MoveNext
loop
objRS.Close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
<% If flag=1 Then %>
<html>
<head>
<style>
#body{
	text-align:center;
	font-size:20px;
	font-family:Gabriola;
	color:darkgreen;
	font-weight:700;
	background-color:lightGreen;
	}
#Heading{
	font:bold 40px Gabriola;}
#info{
	font-size:20px;
	font-family:Gabriola;}
#pre{
	border:1px solid Darkgreen;
	border-radius:4px;
	text-align:center;
	width:400px;
	margin-left:470px;}
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
#form{
		padding-top:20px;}
	.input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	height:25px;}

</style>
<title>Friend Space</title><Body id="body">
<p id="heading">Details of <% =varName & " " & varLName%> are :</p>
<form action="http://localhost/project/Up_Form.asp" method="post">
<pre id="pre"><center><Table id="info">
<tr><td>Roll No</td><td><input name="Rn" type="Text" class="input" value="<% =varRn%>" readonly="readonly" size="25" /></td></tr>
<tr><td>Name			</td><td><input name="Name" type="text"  class="input" value="<% =varName & " " & varLName%>" readonly="readonly" size="25"/></td></tr>
<tr><td>Address		 	</td><td><input type="text" name="Address" value="<% =varAddress%>"class="input" readonly="readonly" size="25"/></td></tr>
<tr><td>Date Of Birth	</td><td><input type="text" name="Dob" value="<% =varDob%>"class="input"  readonly="readonly" size="25"/></td></tr>
<tr><td>Class			</td><td><input type="text" name="Class" value="<% =varClass%>" class="input" readonly="readonly" size="25"/></td></tr>
<tr><td>House			</td><td><input type="text" name="House" value="<% =varHouse%>" class="input" readonly="readonly" size="25"/></td></tr>
<tr><td>Hobbies			</td><td><input type="text" name="Hobbies" value="<% =varHobbies%>" class="input" readonly="readonly" size="25"/></td></tr>
<tr><td>Contact Info		</td><td><input type="text" name="Contact" value="<% =varContact%>" class="input" readonly="readonly" size="25"/></p></pre></td></tr></table><center>
<input type="Submit" value="Update Changes" class="btn"> 
</form>
</Body>
</html>
<% Else %>
<html>
<head>
</head>
<style>
#body{
	border:1px solid darkgreen;
	margin-left:400px;
	margin-right:400px;
	margin-top:150px;
	border-radius:4px;}
#np{
	
	background:lightgreen;
	font-size:40px;
	font-family:Gabriola;
	color:darkGreen;
	margin-top:0px;}
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
<body bgcolor="lightgreen"><div id="body">
<center><p id="np">Oops......No Record Found.......!!!</p>
<form action="homepage.asp">
<input type="submit" value="Return to Home Page" class="btn">
</form></center></div>
</body>
</html>
<% end if%>
