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
	if (email == "") {
		document.getElementById("alert2").innerHTML = "!Please enter a valid e-mail address.";
	}

	if (email.indexOf("@", 0) < 0) {
		document.getElementById("alert2").innerHTML = "!Please enter a valid e-mail address.";
	}

	if (email.indexOf(".", 0) < 0) {
		document.getElementById("alert2").innerHTML = "!Please enter a valid e-mail address.";
	}

	var password = document.getElementById("Password").value;
	if (password == "") {
		document.getElementById("alert3").innerHTML = "!Please enter your password.";
	}

	var pass = /^\d{6}$/;
	if (!password.match(pass)) {
		document.getElementById("alert3").innerHTML = "!Please enter valid password.";
	}

}