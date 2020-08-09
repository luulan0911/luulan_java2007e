function nhap(){
    var str = this.value
    username.value = username.value + str
    password.value = password.value + str
}

function dangNhap(){
    var username = document.getElementById("username")
    var password = document.getElementById("password")
    var login = document.getElementsByClassName("login")

    if (username == "") {
        alert("phải nhập tên người dùng !!!")
        document.username.focus()
    }
    if (password == "" || password.length < 6) {
        alert("Nhập vào mật khẩu !!!")
        document.password.focus()
    }
}

username.onclick = nhap
password.onclick = nhap