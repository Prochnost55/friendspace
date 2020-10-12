<title>Friend Space</title><%'set MyFileObject=server.CreateObject("Scripting.FileSystemObject")
'	set myfolder=myfileobject.getfolder("C:\data")
'	for each folder in myfolder.subfolders
'			 num = num + 1
'		next
'		
'dim folder()
'	response.Write(num)
		Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			Set Myfile=Fileobj.OpenTextFile("C:\1.txt", 8, 1)
			myfile.writeline("<br>lkjlkajflkdsjklfsdjlfsd")
			MyFile.close%>	
