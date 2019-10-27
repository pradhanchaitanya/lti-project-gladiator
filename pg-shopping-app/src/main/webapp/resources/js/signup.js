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

	var pass = /^(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;/*/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;*/
	if (!password.match(pass)) {
		document.getElementById("alert3").innerHTML = "!Please enter valid password.";
	}
	
	var address = document.getElementById("Address").value;
	if (address == "") {
		document.getElementById("alert4").innerHTML = "!Address must be filled out";
	}
	
	/*var account = document.getElementById("Account").value;
	if (account == "") {
		document.getElementById("alert5").innerHTML = "!Account number must be filled out";
	}
	
	var acc = /^\d{10}$/;
	if (!account.match(acc)) {
		document.getElementById("alert5").innerHTML = "!Please enter valid account number.";
	}*/
	
}