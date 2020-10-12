function namex()
{
var name=document.getElementById('name1').value;
var namesplit=name.split(" ");
var finame=namesplit[0];
var miname=namesplit[1];
if (namesplit.length>2)
{

var liname=namesplit[2];
}
else
{
var liname="";
}

document.getElementById('lstname').value=liname;

}
