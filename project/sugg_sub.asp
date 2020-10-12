<title>Friend's Space</title>
<%
sugg = request.form("sugg_name")
sugg_email = request.form("sugg_email")
suggestion = request.form("suggestion")
%>
<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile(server.mappath("data")& "\" & "Suggestion.txt",8 ,1)
			myfile.writeline("<div id='suggestion'> Name of suggestor :"& sugg& "<br>")
			myfile.writeline(" Suggestors Email-ID :"& sugg_email& "<br>")
			myfile.writeline(" Suggestion :"& suggestion& "</div>")
			MyFile.close
			response.Redirect("sugg_subd.asp")
%>