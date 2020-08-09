var result = document.getElementById("result")
var numbers = document.getElementsByClassName("numbers")
var operators = document.getElementsByClassName("operators")
var del = document.getElementById("clearLast")
var clear = document.getElementById("clearAll")

function nhapSo(){
    var n = this.value
    result.value = result.value + n
}

function clearLastElement(){
    result.value = result.value.slice(0, result.value.length - 1)
}

function clearAllElement(){
    result.value = 0
}

function tinh(){
    var value = this.value
    var n = result.value
    var x, y, res
    if (n.indexOf("+") == 0 || n.indexOf("-") == 0 || n.indexOf("*") == 0 || n.indexOf("/") == 0 || n.indexOf("+") == n.length -1 ||n.indexOf("-") == n.length -1 ||n.indexOf("*") == n.length -1 ||n.indexOf("/") == n.length -1) {
        alert("phép tính không hợp lệ !!!")   
    } else {
        if (n.indexOf("+") > 0) {
            x = Number(n.slice(0, n.indexOf("+")))
            y = Number(n.slice(n.indexOf("+") + 1, n.length))
            res = x + y
            result.value = res
        }
        if (n.indexOf("-") > 0) {
            x = Number(n.slice(0, n.indexOf("-")))
            y = Number(n.slice(n.indexOf("-") + 1, n.length))
            res = x - y
            result.value = res
        }
        if (n.indexOf("*") > 0) {
            x = Number(n.slice(0, n.indexOf("*")))
            y = Number(n.slice(n.indexOf("*") + 1, n.length))
            res = x * y
            result.value = res
        }
        if (n.indexOf("/") > 0) {
            x = Number(n.slice(0, n.indexOf("/")))
            y = Number(n.slice(n.indexOf("/") + 1, n.length))
            res = x / y
            result.value = res
        }
    }
    if (value != "=") {
        result.value = result.value + value
    }
}

for (var i = 0; i < numbers.length; i++) {
    numbers[i].onclick = nhapSo
}

for (var i = 0; i < operators.length; i++) {
    operators[i].onclick = tinh
}

del.onclick = clearLastElement

clear.onclick = clearAllElement