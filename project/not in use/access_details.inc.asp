

<% LAT=request.Cookies("LastTime") %>
<% LAD=request.Cookies("LastDate") %>
<% 
If(Request.cookies("NumVisits") = "") then
Response.Cookies("NumVisits")= 0
else
response.Cookies("NumVisits") = request.Cookies("NumVisits") + 1
end if
%>

<% response.Cookies("LastDate") = Date %>
<% response.Cookies("LastTime") = Time %>
<% 			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.openTextFile("C:\data\"&user&"\acc_det.txt", 8, 1)
			MyFile.writeline("<h3>You accessed on <u>" & LAD & "</u> at <u>" & LAT &"</u></h3><br>")
%>

