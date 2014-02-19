
var request;
function getRequest()
{
	if(window.ActiveXObject){
	
	return(new ActiveXObject("Microsoft.XMLHTTP"));
		} 
		else if (window.XMLHttpRequest) {
		return(new XMLHttpRequest());
		}
		 else {
		return(null);
		}
	}

function mailerg(name)
{
var names=new Array();
names=name.split(",");

	var url="http://localhost:8080/CodePassion_BL1/sendMail?empid="+names[1]+"&status="+names[0];
	request=getRequest();
	request.onreadystatechange=handleResponse;
	request.open("GET",url,true);
	request.send(null);
	document.getElementById(name).value="Mail Sent";
			document.getElementById(name).disabled="disabled";
}
	function handleResponse() {
		if ((request.readyState == 4) && (request.status == 200)) {
			var response = request.responseText
					
			
			}

}