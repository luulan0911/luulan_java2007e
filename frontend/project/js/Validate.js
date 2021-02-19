function Validated() {

	function kiemTraEmail(email1) {
		var regexEmail = /^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,6})$/;
		return regexEmail.test(email1);
	}

	var email1 = document.forms["form1"]["email1"].value;
		if (!kiemTraEmail(email1)) {
		alert("Sai ten dang nhap");
		}
	var pass1 = document.getElementById("pass1").value;
			if (pass1 == "hien123" && email1 == "nhom1@gmail.com"){
				alert("Đăng nhập thành công!");
			}
			else{
					alert("Sai mật khẩu");
				}
		return false;
}

// đăng kí
var user = document.forms['form']['user'];
var email = document.forms['form']['email'];
var password = document.forms['form']['password'];
var confirmPass = document.forms['form']['confirmPass'];
var addr1 = document.forms['form']['addr1'];
var addr2 = document.forms['form']['addr2'];
var phone = document.forms['form']['phone'];

var user_error = document.getElementById('user_error');
var email_error = document.getElementById('email_error');
var pass_error = document.getElementById('pass_error');
var confirm_error = document.getElementById('confirm_error');
var addr1_error = document.getElementById('addr1_error');
var addr2_error = document.getElementById('addr2_error');
var phone_error = document.getElementById('phone_error');

user.addEventListener('textInput', user_Verify);
email.addEventListener('textInput', email_Verify);
password.addEventListener('textInput', password_Verify);
confirmPass.addEventListener('textInput', confirmPass_Verify);
addr1.addEventListener('textInput', addr1_Verify);
addr2.addEventListener('textInput', addr2_Verify);
phone.addEventListener('textInput', phone_Verify);

function validated(){
	if (user.value.length < 6) {
		user.style.border = "1px solid red";
		user_error.style.display = "block";
		user.focus();
		return false;
	}
	if (email.value.length < 9) {
		email.style.border = "1px solid red";
		email_error.style.display = "block";
		email.focus();
		return false;
	}
	if (password.value.length < 6) {
		password.style.border = "1px solid red";
		pass_error.style.display = "block";
		password.focus();
		return false;
	}
	if (confirmPass.value !== password.value ) {
		confirmPass.style.border = "1px solid red";
		confirm_error.style.display = "block";
		confirmPass.focus();
		return false;
	}
	if (addr1.value.length < 9) {
		addr1.style.border = "1px solid red";
		addr1_error.style.display = "block";
		addr1.focus();
		return false;
	}
	if (addr2.value.length < 9) {
		addr2.style.border = "1px solid red";
		addr2_error.style.display = "block";
		addr2.focus();
		return false;
	}
	if (phone.value.length < 10 ) {
		phone.style.border = "1px solid red";
		phone_error.style.display = "block";
		phone.focus();
		return false;
	}
}
function  user_Verify(){
	if (user.value.length >= 5) {
		user.style.border = "1px solid silver";
		user_error.style.display = "none";
		user.focus();
		return  true;
	}
}
function email_Verify(){
	if (email.value.length >= 9) {
		email.style.border = "1px solid silver";
		email_error.style.display = "none";
		email.focus();
		return  true;
	}
}
function password_Verify(){
	if (password.value.length >= 5) {
		password.style.border = "1px solid silver";
		pass_error.style.display = "none";
		password.focus();
		return  true;
	}
}
function  confirmPass_Verify(){
	if (confirmPass.value.length ) {
		confirmPass.style.border = "1px solid silver";
		confirm_error.style.display = "none";
		confirmPass.focus();
		return  true;
	}
}
function addr1_Verify(){
	if ( addr1.value.length >= 8) {
		 addr1.style.border = "1px solid silver";
		 addr1_error.style.display = "none";
		 addr1.focus();
		return  true;
	}
}
function addr2_Verify(){
	if ( addr2.value.length >= 8) {
		 addr2.style.border = "1px solid silver";
		 addr2_error.style.display = "none";
		 addr2.focus();
		return  true;
	}
}
function  phone_Verify(){
	if (  phone.value.length >= 9) {
		  phone.style.border = "1px solid silver";
		  phone_error.style.display = "none";
		  phone.focus();
		  return  true;
	}
}