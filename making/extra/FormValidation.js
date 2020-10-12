function verify(form)
{
	for(i=1;i<=2;i++)
	{
		if(document.forms[0].element[i].value=="")
		{
			alert("Please fill in the " +document.forms[0].elemets[i].name+" field");
			document.forms[0].element[i].focus();
			return(false);
		}
		
		if(document.forms[0].elements[1].value!="")
		{
			pass=document.forms[0].elements[1].value.indexOf('@',0);
			pass1=document.forms[0].elements[1].value.indexOf('.',0);
			
			if((pass==-1)||(pass1==-1))
			{
				alert("Not a valid name")
				document.forms[0].element[i].focus();
				return(false);}
		}
	}
}
