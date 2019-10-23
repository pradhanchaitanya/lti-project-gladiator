function validateLoginForm() {
	
	var email = document.getElementById("EMail").value;
	var emailId = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
	if (!email.match(emailId)) {
		document.getElementById("alert2").innerHTML = "!Please enter valid email.";
	}
	
	var password = document.getElementById("Password").value;
	if (password == "") {
		document.getElementById("alert3").innerHTML = "!Please enter your password.";
	}
}