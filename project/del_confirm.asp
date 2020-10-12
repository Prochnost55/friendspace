<html>
<head><title>Untitled Document</title>
<style>
@import url("a.css");
#confirm{
	border:1px solid darkgreen;
	margin-top:7%;
	margin-left:35%;
	margin-right:35%;
	border-radius:8px;}
</style>
</head>

<body>
<% num = request.QueryString("ID")%>
<div id="confirm"><form action="del_entry.asp" method="post">
<h1>Are you sure to delete your account</h1><br>
<center><table><tr><td><input type="submit" value="Yes" class="btn"></td>
<td><input type="hidden" value='<%=num%>' name="num"/></td>
</form>
<form action="user_settings.asp" method="post">
<td><input type="submit" value="No" class="btn"/></td></tr></table></center>
</form><div>
</body>
</html>
