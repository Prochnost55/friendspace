<%session.Abandon()%>
<%
IdCrt = cstr(session("IDCrt"))

%>
<!Doctype html>
<html lang="en">
<head>

	<meta charset="utf-8" />
	<title>Friends Space</title>
	<script>
function namex()
{
	var name=document.getElementById('name1').value;
	var namesplit=name.split(" ");
	var finame=namesplit[0];
		if (namesplit.length>2)
			{
				var miname=namesplit[1];
			}
		else
			{
				var miname="";
			}

		if (namesplit.length>2)
			{
				var liname=namesplit[2];
			}
		else
			{
				var liname=namesplit[1];
			}

document.getElementById('lstname').value=liname + " " + miname;
document.getElementById('1stname').value=finame;

	
}


    </script>
	<style>
@import url("Home.css");
    </style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body tracingsrc="abhishek_singh_1.jpg" tracingopacity="100" >
  <div id="b">
		<center><div id="box">
			Friend's Page
		</div></center>
	  <pre>&nbsp;
 	 		 				</pre>
<div id="new_div">
<% IF IdCrt = cstr("True") then %>

								<div id="hiddenbox">
								asd
								</div> 
<%END IF %>
<div id="main_section">
<center>						<form  method="post" id="fm" onSubmit="verify()"><table>
						
                        <tr>
                        		<td>1. Name :</td>
                                <td><input type="text" name="Fname" class="input" id="name1" title="Your name \ username" onBlur="namex()" autocomplete="off"></td>
                        </tr>
					  	<tr>	
                        		<td><input type="hidden" size="8" maxlength="20" align="Left"   id="lstname" name="Lname" autocomplete="off"></td>
                      			<td> <input type="hidden" size="8" maxlength="20" align="Left"   id="1stname" name="1stname" autocomplete="off"></td>
                       </tr>
                         
                        <tr>
                        		<td>2. Your username :</td>
                                <td><input name="username" type="text" class="input" title="Your username" id="usrname" lign="left" autocomplete="off"></td>
                       </tr>
                     	<tr>
                        		<td>3. Your Password :</td>
                                <td><input type="password" align="left" name="password" class="input" id="passwrd" title="Your Password" autocomplete="off"></td>
                       </tr>
						 <tr>
                         		<td>4. Sex:</td>
                                <td><input type="radio" value="male" name="sex" checked>Male		<input type="radio" value="Female" name="sex" >Female</td>
                        </tr>                   
                        <tr>
                        		<td>5. Date of Birth   :</td>
                                <td><input type="text" name="dob" size=10 class="input" title="D.O.B." id="username"autocomplete="off"> (dd/mm/yyyy)</td>
                       </tr>                        
                       <tr>
                       			<td>6. Phone Number : </td>
                                <td><input type="text" align="Left" name="Contact" value="" id="contact" class="input" title="Phone No." autocomplete="off"></td>
                       </tr></table>
						<center> <input name="" type="submit"  class="btn"  value="Submit" >
						 		<input type="reset" value="Reset" class="btn"></form>
				       
             			
                                       <form action="suggestion.asp" method="post"  id="form" >
                                        <input type="Submit" value="Suggest Something"  class="btn" >
                                        <br>
                                      </form></center>
                                         <script>
                                         function verify()
										 {
											var a=document.getElementById('name1').value;
											var b=document.getElementById('usrname').value;
											var c=document.getElementById('passwrd').value;
											var d=document.getElementById('username').value;
											var e=document.getElementById('contact').value;
											var date=d.split("/");
											var dat=date[0];
											var month =date[1];
											var year = date[2];
										if (a=="" || b=="" ||c=="" ||d=="" ||e=="")
											{
												alert("Some Fields are empty");
												
											}
												
												else if (dat>31)
											{
											alert ("Enter Correct Date");
											}
											else if (month>12)
											{
												alert("Enter Correct Month")
											}
											else if(year >2007 || year <1950)
											{
												alert("Enter Correct Year"); 
											}
											
											else if (isNaN(e))
											{
												alert("Enter contact Number");
											}
											else
											{
												namex();
												if (confirm("Thankyou for Registering. Do you Want to Proceed"))
												{
												
												document.getElementById('fm').action="new_friend.asp";
												}
											}
										
															
										 }
                                         </script>

                                    
		
			</div>
            <div id="main_section">
			
            <div id="log"><center><H1>If already have an ID then plz login....</h1></center><hr color="green">
			</div>	
		
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

		
							</div>
			<footer id="the_footer">
			<h1>Made by Cdt.Abhishek Singh</h1>
			</footer>
		</div>
                              
</body>
</html>