<%
dim objConn, strConn, objRs
num = asds
set objConn = Server.CreateObject("ADODB.Connection")
strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source="& _
		"C:\Database\db2.mdb"
objConn.Open strConn
Set objRS = Server.CreateObject("ADODB.RecordSet")
objRS.Open "Friend" ,objConn

	While NOT objRS.EOF 
'		response.Write(objRS("Name") & "_" &objRS("Last_name")
 '		objRS.MoveNext
'	response.Write(num)

wend
 objRS.Close
 objConn.Close
 Set objConn=Nothing
 Set objRS=Nothing
 %>