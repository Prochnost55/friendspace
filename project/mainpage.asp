<%
message = request.querystring("message")
%>
<html><head>
<title>Friend Space</title>
<style type="text/css"> 
body  {
	font-family:"Comic Sans MS", cursive;
	background:lightgreen;
	margin: 0; padding: 0;
	text-align: center; 
	color:green;
}
.twoColFixRtHdr #container { 
	width: 780px;  
	background: #FFFFFF;
	margin: 0 auto; border-radius:4px;
	text-align: left;
} 

.twoColFixRtHdr #sidebar1 {
	float: right; 
	width: 200px;
	border-left:1px;
	
	padding: 15px 10px;
}
.twoColFixRtHdr #mainContent { 
	margin: 0 250px 0 0; 
	padding: 0 20px;
} 
.twoColFixRtHdr #footer { 
	padding: 0 10px 0 20px;
	background:#DDDDDD; 
} 
.twoColFixRtHdr #footer p {
	margin: 0;
	padding: 10px 0; 
.fltrt { 
	float: right;
	margin-left: 8px;
}
.fltlft {
	float: left;
	margin-right: 8px;
}
.clearfloat {
	clear:both;
    height:0;
    font-size: 1px;
    line-height: 0px;
}

.twoColFixRtHdr #sidebar1 { width: 220px; }
.twoColFixRtHdr #sidebar1 { padding-top: 30px; }
.twoColFixRtHdr #mainContent { zoom: 1; }
</style>
<style>
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
	
.btn{
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	font-family:"Comic Sans MS";
	color:green;
	text-shadow:0 1px 1px rgba(255,255,255,.5);
	background-color:yellow;
	background-repeat:no-repeat;
	border:1px solid darkgreen;
	cursor:pointer;
	border-radius:4px;
	-webkit-box-shadow:0 1px 0 rgba(255,255,255,.5);
	box-shadow:0 1px 0 rgba(255,255,255,.5);
	margin-top:2px;
	
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
	margin-top:5px;
	margin-bottom:5px;
	}

#freespace{

	height:10%;
	visibility:hidden;}
#box{
	margin:20px;
	color:#ffffff;
	border-radius:10px;
	width:100px;
	height:75px;
	font-family:gabriola;
	font-size:30px;
	border:2px solid green;
	width:300px;
	color:green;
	background:yellow;
	padding:5px;
	-webkit-border-radius:25px;
	-webkit-box-shadow:rgb(110,110,110) 8px 8px 8px;
	text-align: center;
	-webkit-transition:-webkit-transform 2s, opacity 2s, background 2s, width 2s, height 2s;
	}/*
#box:hover{
	-webkit-transform: rotate(360deg);
	opacity: 1;
	background:yellow;
	width:450px;
	height:110px;
	
	}*/

</style>
</head>
<body class="twoColFixRtHdr">
<center><div id="box">Friend's Page</div></center>
<hr width="80%" color="green">
<div id="freespace">
freespace
</div>
<%
			if message = "dob" then
			response.write("<H3>Please input correct Date of Birth in dd/mm/yyyy format</H3>")
			elseif message = "acc_success" then
			response.write("<H3>Account created succesfully.</H3>")
			elseif message = "acc_del_success" then
			response.write("<H3>Account deleted succesfully.</H3>")
			
			end if 
		%>
<div id="container">

  <div id="sidebar1">
  <center><H4>If already have an ID then plz login....</h4></center><hr />
			
		
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
          
			
  <!-- end #sidebar1 --></div>
  <div id="mainContent">
   <form  method="post" id="fm"  action = "verify.asp">
   <table>
						
                        <tr>
                        		<td>1. Name </td>
                                <td>:
                                  <input type="text" name="Fname" class="input" id="name1" title="Your name \ username" onBlur="namex()" autocomplete="off"></td>
                        </tr>
					  	<tr>	
                        		<td><input type="hidden" size="8" maxlength="20" align="Left"   id="lstname" name="Lname" autocomplete="off"></td>
                      			<td> <input type="hidden" size="8" maxlength="20" align="Left"   id="1stname" name="1stname" autocomplete="off"></td>
                       </tr>
                         
                        <tr>
                        		<td>2. Your username </td>
                                <td>:<input name="username" type="text" class="input" title="Your username" id="usrname" lign="left" autocomplete="off"></td>
                       </tr>
                     	<tr>
                        		<td>3. Your Password </td>
                                <td>:
                                  <input type="password" align="left" name="password" class="input" id="passwrd" title="Your Password" autocomplete="off"></td>
                       </tr>
						 <tr>
                         		<td>4. Sex</td>
                                <td>:
                                  <input type="radio" value="male" name="sex" checked>Male		<input type="radio" value="Female" name="sex" >Female</td>
                        </tr>                   
                        <tr>
                        		<td>5. Date of Birth   </td>
                                <td>:
                                  <input type="text" name="dob" size=10 class="input" title="D.O.B." id="username"autocomplete="off"> (dd/mm/yyyy)</td>
                       </tr>                        
                       <tr>
                       			<td>6. Phone Number  </td>
                                <td>:
                                  <input type="text" align="Left" name="Contact" value="" id="contact" class="input" title="Phone No." autocomplete="off" maxlength=10 ></td>
                       </tr></table>
						<center> <input name="" type="submit"  class="btn"  value="Submit" >
						 		<input type="reset" value="Reset" class="btn"></form>
				       
             			
                                    <form action="suggestion.asp" method="post"  id="form" >
                                        <input type="Submit" value="Suggest Something"  class="btn" >
                                        <br>
                                      </form>   
	</div>
	</div>

<div id="freespace">
freespace
</div>
<hr width=80% color="green">			<h4>Developed by Cdt.Abhishek Singh</h4></hr>

</body>
</html>
