<html>
<style>
body{
	background:lightgreen;
	font:bold 20px Gabriola;
	color:darkgreen;
	}
h1{
	font:bold 40px Gabriola;
	}
#body{
	border:2px solid green;
	border-radius:8px;
	margin-top:7% ;
	margin-left:35%;
	margin-right:35%;
	text-align:center;
	height:400px;}
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
.btn:active{
	border-color:#bbb;
	background-image:none;
	-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5)
	}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	margin-top:10px;
	margin-bottom:10px;
	}
.input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	height:25px;
	font-style:italic;
	cursor:text;
	}
.input:focus{
	border:2px solid green;}
#a	{
	color:red;
	text-align:center;}
</style>
<title>Friend Space</title><body>


<div id="body">
<h1>Login</h1><hr color="darkgreen" width="300px">
<form action="log.asp" method="post">
	Username	:
	  <input name="Uname" type="text" class="input" autocomplete="off">
    <br>
    Password	:
     <input name="Upass" type="password" class="input"  autocomplete="off">
<br>
    			<input name="submit" type="submit" class="btn" id="submit" value="Login"> 
                <input type="reset" class="btn"> 
</form>
</div>
</body>
</html>
