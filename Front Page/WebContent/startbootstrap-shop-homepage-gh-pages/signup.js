function validateForm() {

	var name = document.getElementById("name").value;
	if (name == "") {
		document.getElementById("alert").innerHTML = "!Name must be filled out";
	}

	var phone = document.getElementById("Telephone").value;
	if (phone == "") {

		document.getElementById("alert1").innerHTML = "!Please enter your telephone number.";
	}
	var phoneno = /^\d{10}$/;
	if (!phone.match(phoneno)) {
		document.getElementById("alert1").innerHTML = "!Please enter your valid telephone number.";
	}

	var email = document.getElementById("EMail").value;
	var emailId = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
	if (!email.match(emailId)) {
		document.getElementById("alert2").innerHTML = "!Please enter valid email.";
	}
	
	var password = document.getElementById("Password").value;
	if (password == "") {
		document.getElementById("alert3").innerHTML = "!Please enter your password.";
	}

	var pass = /^\d{6}$/;
	if (!password.match(pass)) {
		document.getElementById("alert3").innerHTML = "!Please enter valid password.";
	}
	
	var address = document.getElementById("Address").value;
	if (address == "") {
		document.getElementById("alert4").innerHTML = "!Address must be filled out";
	}

	
}