function validateloginform(){
	var email =   document.getElementById("EMail").value;
    if (email == "")                                   
    { 
        document.getElementById("alert2").innerHTML ="Please enter a valid e-mail address.";
    } 
   
    if (email.indexOf("@", 0) < 0)                 
    { 
        document.getElementById("alert2").innerHTML ="Please enter a valid e-mail address.";
    } 
   
    if (email.indexOf(".", 0) < 0)                 
    { 
        document.getElementById("alert2").innerHTML ="Please enter a valid e-mail address.";  
    }

    var password =  document.getElementById("Password").value; 
    if (password == "")                        
    {   
        document.getElementById("alert3").innerHTML ="Please enter your password.";
    } 
}