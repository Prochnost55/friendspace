<html>
<head>
<title>Friend Space</title>
</head>
<% username = session("username")%>
<% if len(username)=0 then
response.redirect("login.asp")
else%> 
<% lastname = session("lastname")%>
<% Rn = session("Rn")%>
<% sex=session("sex")%>
<% game = request.QueryString("game")%>
<% user = username&"_"&lastname&"_"&rn%>
<html>
<head>

<title>Friends Page</title>
<style type="text/css"> 
@import url("a.css");
li{
	border:1px solid darkgreen;
	width:70%;
	height:25px;
	margin:2px;
	font-weight:inherit;
	text-align:center;}
li:hover{
	margin:4px;
	color:#36C;
	border-color:#36C;
	background:lightgreen;
	font-weight:900;
	}
</style></head>

<body class="thrColLiqHdr">

<div id="container">
 <div id="header">
 
<% 
				profilePicPath = cstr(server.mappath("user_profile_pic\" & user & ".jpg"))
				set MyFileObject = server.CreateObject("Scripting.filesystemobject")
	if MyFileObject.FileExists(profilePicPath) Then
				response.write("<img src= user_profile_pic\" & user & ".jpg border='2' id='photo'>")
	else

				response.write("<img src= user_profile_pic\" & sex & ".jpg border='2' id='photo'>")
	end if
%> 
	<span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
  <div id="header_opt">
  <a href="logout.asp">Logout</a></div></div>
  <div id="sidebar1">
  
    <ul> <h3>Do something</h3>
    	<div id="li"><a href="user.asp">Home</a></div>
    	<div id="li"><a href="user_settings.asp">Settings</a></div>
        <div id="li"><a href="WAP_user.asp">Write a Post</a></div>
       	<div id="li_act"><u>Play game</u></div>
       	<div id="li"><a href="chat.asp">Chat</a></div>
        <div id="li"><a href="profile.asp">Profile</a></div>
     </ul>
  </div>
  <div id="sidebar2"><h3>Games:</h3>
<ul>
	<div id="li"><a href="play_hangman.asp">Hangman</a></div>
    <div id="li_act"><u>Reflex Tester</u></Div>	
    	
    </ul>
  </div>
  <div id="mainContent">
  <center><h1>Here is your game</h1>
<script language="JavaScript">
<!-- hiding for old browsers
	// response time test, created by Jasper van Zandbeek
	// e-mail: jasperz@net-v.com

var startTime=new Date();
var endTime=new Date();
var startPressed=false;
var bgChangeStarted=false;
var maxWait=20;
var timerID;

function startTest()
{
	document.body.style.background=document.response.bgColorChange.options[document.response.bgColorChange.selectedIndex].text;
	bgChangeStarted=true;
	startTime=new Date();
}

function remark(responseTime)
{
	var responseString="";
	if (responseTime < 0.10)
		responseString="Well done!";
	if (responseTime >= 0.10 && responseTime < 0.20)
		responseString="Nice!";
	if (responseTime >=0.20 && responseTime < 0.30)
		responseString="Could be better...";
	if (responseTime >=0.30 && responseTime < 0.60)
		responseString="Keep practising!";
	if (responseTime >=0.60 && responseTime < 1)
		responseString="Have you been drinking?";
	if (responseTime >=1)
		responseString="Did you fall asleep?";

	return responseString;
}

function stopTest()
{
	if(bgChangeStarted)
	{
		endTime=new Date();
		var responseTime=(endTime.getTime()-startTime.getTime())/1000;

		document.body.style.background="white";       
		alert("Your response time is: " + responseTime + " seconds " + "\n" + remark(responseTime));
		startPressed=false;
		bgChangeStarted=false;
	}
	else
	{
		if (!startPressed)
		{
			alert("press start first to start test");
		}
		else
		{       
			clearTimeout(timerID);
			startPressed=false;             
			alert("cheater! you pressed too early!");
		}               
	}
}

var randMULTIPLIER=0x015a4e35;
var randINCREMENT=1;
var today=new Date();
var randSeed=today.getSeconds();
function randNumber()
{
	randSeed = (randMULTIPLIER * randSeed + randINCREMENT) % (1 << 31);
	return((randSeed >> 15) & 0x7fff) / 32767;
}

function startit()
{
	if(startPressed)
	{
		alert("Already started. Press stop to stop");
		return;
	}
	else
	{
		startPressed=true; 
		timerID=setTimeout('startTest()', 6000*randNumber());
	}
}
// --> 
</script>
<p>Test your Response time!</p>
Click on "Start" first, and wait until the background color changes. As soon as it changes, hit "stop!"


<form name="response">
Change background color in: 
<select name="bgColorChange" id="input">
<option selected>deeppink
<option>aliceblue
<option>crimson
<option>darkkhaki
<option>cadetblue
<option>darkorchid
<option>coral
<option>chocolate
<option>mediumslateblue
<option>tomato
<option>darkslategray
<option>limegreen
<option>cornflowerblue
<option>darkolivegreen
</select>
<input type="button" value="start" onClick="startit()" class="btn">
<input type="button" value="stop" onClick="stopTest()" class="btn">
</form>


 </center>
	
    
	  <p> 
  
	</div>
	<br class="clearfloat" />
  <div id="footer">
    <p><a href="logout.asp">Logout</a> <!-- end #footer --></div>
</div>
</body>
</html>



<body>

</body>
</html>
<%end if%>
