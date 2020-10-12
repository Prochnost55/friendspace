<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
body  {
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background: #666666;
	margin: 0; 
	padding: 0;
	text-align: center; 
	color: #000000;
	background-color: lightgreen;
}
#a	{
	color:red;
	text-align:center;}
.thrColLiqHdr #container { 
	width: 80%;  
	background: lightgreen;
	margin: 0 auto; 
	border: 2px solid darkgreen;
	border-radius:8px;
	text-align: left;}
.thrColLiqHdr #header { 
	background:#393; 
	padding: 0 10px;
	border:1px solid #393;
	border-radius:4px;
	margin-bottom:10px;
	text-align:left;

} 
.thrColLiqHdr #header h1 {
	margin-right:10px;
	padding: 0px 0; 
}


.thrColLiqHdr #sidebar1 {
	float: left; 
	width: 22%; 
	background: #EBEBEB; 
	padding: 15px 0; 
}
.thrColLiqHdr #sidebar2 {
	float: right; 
	width: 23%; 
	background: #EBEBEB; 
	padding: 15px 0;
}
.thrColLiqHdr #sidebar1 p, .thrColLiqHdr #sidebar1 h3, .thrColLiqHdr #sidebar2 p, .thrColLiqHdr #sidebar2 h3 {
	margin-left: 10px; 
	margin-right: 10px;
}


.thrColLiqHdr #mainContent { 
	margin: 0 24% 0 23.5%;
	background-color:lightgreen;
	border:1px solid darkgreen;
	border-radius:8px;
}

.thrColLiqHdr #footer { 
	padding: 0 10px;
	background:#DDDDDD;
	text-align:center;
} 
.thrColLiqHdr #footer p {
	margin: 0;
	padding: 10px 0; 
}


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
body,td,th {
	font-family: Gabriola;
	color: darkgreen;
}
body {
	background-color: lightgreen;
}
#footer a:link{
	color:green;}
#footer a:visited{
	color:green;}
#footer a:hover{
	color:darkgreen;} 
#header_opt a:link {
	color:white;
	}
#header_opt a:visited {
	color:white;
	}
#header_opt a:hover {
	color:#666;
	}
#sidebar2 a:link{
	color:green;}
#sidebar2 a:visited{
	color:green;}
#sidebar2 a:hover{
	color:darkgreen;} 
#sidebar1 a:link{
	color:green;}
#sidebar1 a:visited{
	color:green;}
#sidebar1 a:hover{
	color:darkgreen;} 
#input{
	color:green;
	border:1px solid green;
	font:15px "Comic Sans MS", cursive;
	border-radius:4px;
	font-style:italic;
	cursor:text;
	}
#input:focus{
	border:2px solid green;}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#FFF);
	}
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
	display:inline-block;}
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
	box-shadow:inset 0 2px 4px rgba(0,0,0,.1),0 1px 0 rgba(255,255,255,.5);
	}
.btn{
	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#FF0),color-stop(100%,#FFF));
	background-image:-webkit-linear-gradient(#FF0,#CC3);
	margin-top:10px;
	margin-bottom:10px;
	}
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
</style><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.thrColLiqHdr #sidebar2, .thrColLiqHdr #sidebar1 { padding-top: 30px; }
.thrColLiqHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]--><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body class="thrColLiqHdr">

<div id="container">
 <div id="header">
  <% profilePic = ("C:\inetpub\wwwroot\Project\user_profile_pic\"&user&".jpg")
 			set MyFileObject = server.CreateObject("Scripting.filesystemobject")
 			if MyFileObject.FileExists(profilePic) Then %>
				<img src='<%response.Write("user_profile_pic\"&user&".jpg")%>' alt="b.jpg" name="photo" border="2" id="photo">
			<%else%>
			 <img src='<%response.Write("user_profile_pic\"&sex&".jpg")%>' alt="b.jpg" name="photo" border="2" id="photo">
			<%end if%>  <span id="header">Welcome, <%=response.write(username & " " & lastname) %> </span>
 <div id="header_opt">
  <form action="friend_profile1.asp" method="post" onSubmit="namex()">
  <input type="text" id="input" name="name1" align="left" >
  <input type="hidden" id="1stname" name="Fname"value="" align="left" >
  <input type="hidden" id="lstname" name="Lname"value="" align="left" >
  <input type="submit" value="Search" class="button">
  
  </form><a href="logout.asp">Logout</a></div>

  </div>
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
	<div id="li_act"><u>Hangman</u></div>
    <div id="li"><a href="Play_tic_tac_toe.asp">Tic tac toe</a></div>
   <div id="li"><a href="Play_reflex_tester.asp">Reflex Tester</a></Div>	
    	
    </ul>
  </div>
  <div id="mainContent">
  <center><h1>Here is your game</h1>
<SCRIPT LANGUAGE="javascript">



var alpha=new Array();
var alpha_index=0;

var bravo=new Array();
var bravo_index=0;

var running=0;
var failnum=0;
var advising=0;

function pick()
{
  var choice="";
  var blank=0;
 
  for (i=0; i<words[index].length; i++)
  {
    t=0;
    for(j=0; j<=alpha_index; j++) 
    if(words[index].charAt(i)==alpha[j] || words[index].charAt(i)==alpha[j].toLowerCase()) t=1;
    
    if (t) choice+=words[index].charAt(i)+" ";
    else 
    {
      choice+="_ ";
      blank=1;
    }
  }   
    
  document.f.word.value=choice;
    
  if (!blank)
  {
    document.f.tried.value="   === You Win! ===";
    document.f.score.value++;
    running=0;
  }
} 


function new_word(form)
{
  if(!running)
  {
    running=1;
    failnum=0;
    form.lives.value=failnum;
    form.tried.value="";
    form.word.value="";
    index=Math.round(Math.random()*10000) % 100;
    alpha[0]=words[index].charAt(0);
    alpha[1]=words[index].charAt(words[index].length-1);
    alpha_index=1;
    bravo[0]=words[index].charAt(0);
    bravo[1]=words[index].charAt(words[index].length-1);
    bravo_index=1;
    pick();
  }
  else advise("A word is already in play!");
}

function seek(letter)
{
  if (!running) advise(".....Click GO to start !");
  else
  {
    t=0;
    for (i=0; i<=bravo_index; i++)
    {
      if (bravo[i]==letter || bravo[i]==letter.toLowerCase()) t=1;
    }

    if (!t) 
	  {
	    document.f.tried.value+=letter+" "
	    bravo_index++;
	    bravo[bravo_index]=letter;
	    
      for(i=0;i<words[index].length;i++)
   	  if(words[index].charAt(i)==letter || words[index].charAt(i)==letter.toLowerCase()) t=1;
  	  
      if(t)
      {
  	    alpha_index++;
	      alpha[alpha_index]=letter;
	    }
	    else failnum++;
	
      document.f.lives.value=failnum;
	    if (failnum==6) 
      {
        document.f.tried.value="You lose - Try again!";
        document.f.word.value=words[index];
        document.f.score.value--;
        running=0;
      }
			else pick();
	  }
	  else advise("Letter "+letter+" is already used!");
  }
}

function advise(msg)
{
  if (!advising)
  {
    advising=-1;
    savetext=document.f.tried.value;  
    document.f.tried.value=msg;
    window.setTimeout("document.f.tried.value=savetext; advising=0;",1000);
  }
}

var words = new Array("","acrimonious","allegiance","ameliorate","annihilate","antiseptic","articulate","authoritative","benefactor","boisterous","breakthrough","carcinogenic","censorious","chivalrous","collarbone","commendable","compendium","comprehensive","conclusive","conscientious","considerate","deferential","denouement","determinate","diffidence","disruption","earthenware","elliptical","entanglement","escutcheon","extinguish","extradition","fastidious","flamboyant","forethought","forthright","gregarious","handmaiden","honeysuckle","hypocritical","illustrious","infallible","lumberjack","mischievous","mollycoddle","nimbleness","nonplussed","obliterate","obsequious","obstreperous","opalescent","ostensible","pandemonium","paraphernalia","pawnbroker","pedestrian","peremptory","perfunctory","pernicious","perpetrate","personable","pickpocket","poltergeist","precipitous","predicament","preposterous","presumptuous","prevaricate","propensity","provisional","pugnacious","ramshackle","rattlesnake","reciprocate","recrimination","redoubtable","relinquish","remonstrate","repository","reprehensible","resolution","resplendent","restitution","retaliation","retribution","saccharine","salubrious","skulduggery","skyscraper","soothsayer","tearjerker","transcribe","turpentine","unassuming","underscore","undertaker","underwrite","unobtrusive","vernacular","waterfront","watertight");

</SCRIPT>


<FORM NAME="f">

<TABLE BGCOLOR=#C0C0C0 BORDER=1>
 <TR>
  <TD COLSPAN=4 ALIGN=RIGHT>
   Score : <INPUT TYPE=TEXT NAME="score" VALUE="0" onfocus="score.blur();" SIZE=2>
   <BR>
   Fails (6): <INPUT TYPE=TEXT NAME="lives" VALUE="0" onfocus="lives.blur();" SIZE=2>  
  </TD>
  <TD COLSPAN=7 ALIGN=CENTER>
   <INPUT TYPE=TEXT NAME="word" VALUE="    --- Hangman ---" onfocus="word.blur();" SIZE=25> 
    <BR>
   <INPUT TYPE=TEXT NAME="tried" VALUE="Click GO to get a word." onfocus="tried.blur();" SIZE=25>  
  </TD>
  <TD COLSPAN=2 ALIGN=CENTER>
   <INPUT TYPE=BUTTON onclick="new_word(this.form);" VALUE=" GO ">   
  </TD>
 </TR>
 <TR>
  <TD><INPUT TYPE=BUTTON VALUE=" A "   onclick="seek('A');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" B "   onclick="seek('B');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" C "   onclick="seek('C');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" D "   onclick="seek('D');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" E "   onclick="seek('E');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" F "   onclick="seek('F');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" G "   onclick="seek('G');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" H "   onclick="seek('H');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" I   " onclick="seek('I');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" J  "  onclick="seek('J');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" K "   onclick="seek('K');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" L  "  onclick="seek('L');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" M "   onclick="seek('M');"></TD>
 </TR>
 <TR>
  <TD><INPUT TYPE=BUTTON VALUE=" N "   onclick="seek('N');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" O "   onclick="seek('O');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" P "   onclick="seek('P');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" Q "   onclick="seek('Q');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" R "   onclick="seek('R');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" S "   onclick="seek('S');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" T "   onclick="seek('T');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" U "   onclick="seek('U');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" V "   onclick="seek('V');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" W "   onclick="seek('W');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" X  "  onclick="seek('X');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" Y "   onclick="seek('Y');"></TD>
  <TD><INPUT TYPE=BUTTON VALUE=" Z  "  onclick="seek('Z');"></TD>
 </TR>
</TABLE>

</FORM>
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
                                  <script>
function namex()
{
var name=document.getElementById('input').value;
var namesplit=name.split(" ");
var finame=namesplit[0];
if (namesplit.length>2)
{
	var fname=namesplit[0];
	var liname=namesplit[2];
	var miname=namesplit[1];
}
else if (namesplit.length==2)
{
	var fname=namesplit[0];
	var liname=namesplit[1];
	var miname="";
}

else if (namesplit.length==1)
{
var fname=namesplit[0];
	var miname="";
var liname="";
}

document.getElementById('lstname').value=liname + " " + miname;
document.getElementById('1stname').value=finame;

	
}

  </script>
</html>

<%end if%>