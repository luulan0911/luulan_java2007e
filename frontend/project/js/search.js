// tạo hệu ứng tìm kiếm trên nav-bar
function myFunction() {
	document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
	var input, filter, ul, li, a, i;
	input = document.getElementById("myInput");
	filter = input.value.toUpperCase();
	div = document.getElementById("myDropdown");
	a = div.getElementsByTagName("a");
	for (i = 0; i < a.length; i++) {
		txtValue = a[i].textContent || a[i].innerText;
		if (txtValue.toUpperCase().indexOf(filter) > -1) {
			a[i].style.display = "";
		} else {
			a[i].style.display = "none";
		}
	}
} 
function dieu_huong(){
	location.assign(" detail_product.html ");
}
function detailSP(){
	location.assign("detail_product.html");
}
function dangKi(){
	if (phone_Verify()) {
	alert("Đăng kí thành công");
	}
}
function dangXuat(){
	alert("Đăng nhập lại để tham gia mua sản phẩm!!!")
	location.assign("index.html");
}
function Tro_Giup(){
	location.assign("feedback.html");
}
