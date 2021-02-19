$(document).ready(function(){
    // Hiệu ứng click hiện ra html
    $(".open-btt").on("click",function(){
        $(".open-btt").css("display","none")
       $(".close-btt").show()
        $(".input").css("display","block")
    })
    $(".close-btt").on("click",function(){
        $(".close-btt").css("display","none")
        $(".open-btt").show()
        $(".input").css("display","none")

    })
   
    //  Hiệu ứng khi rê chuột lên ngôi sao
 
    $("#s1").mouseenter(function(){
        $("#s1").css("color", "chocolate");
        $("#text").text("không thích").css("display","inline-block")
     });
     $("#s2").mouseenter(function(){
        $("#s1").css("color", "chocolate");
        $("#s2").css("color", "chocolate");
        $("#text").text("tạm được").css("display","inline-block")
        
     });
     $("#s3").mouseenter(function(){
        $("#s1").css("color", "chocolate");
        $("#s2").css("color", "chocolate");
        $("#s3").css("color", "chocolate");
        $("#text").text("Bình thường").css("display","inline-block")
     });
     $("#s4").mouseenter(function(){
        $("#s1").css("color", "chocolate");
        $("#s2").css("color", "chocolate");
        $("#s3").css("color", "chocolate");
        $("#s4").css("color", "chocolate");
        $("#text").text("tốt").css("display","inline-block")
     });
     $("#s5").mouseenter(function(){
        $("#s1").css("color", "chocolate");
        $("#s2").css("color", "chocolate");
        $("#s3").css("color", "chocolate");
        $("#s4").css("color", "chocolate");
        $("#s5").css("color", "chocolate");
        $("#text").text("Rất tuyệt vời").css("display","inline-block")
     });
    
    $(".star").mouseout(function(){
		var isChocolate = $(this).attr("isChocolate");
		if (isChocolate != "chocolate") {// kieem tra xem dax dk to mauf cho ngooi sao chuwa neu chuwa thi ngoi con lai la mau den
			$(".star").css("color","black")
		}
        $("#text").css("display","none")
    })
	
    // đặt sự kiện onclick để cho ý kiến đánh giá
    $(".star").on("click",function(){
		$(this).attr("isChocolate", "chocolate");
        $(this).css("color", "chocolate");
        $(".cmt").show()
    })
    // đặt sự kiện cho  xem thêm của phần hỏi đáp
    $("#morelist").on("click",function(){
        $("#more").show()
        $('#morelist').css('display','none')
        $('#listmore').css("display",'block')
        // $("#Rep").css("height","2500px")

    })
    $('#listmore').on('click',function(){
        $('#morethan').show()
        $('#listmore').css('display','none')
        $('#listmore').css('display','block')
    })
    $('#listmore1').on('click',function(){
        $('#morethan1').show()
    })
       // hàm kiểm tra xem email có đúng với mẫu không
    function isEmail(emailStr)
            {
                    var regexEmail=/^(.+)@gmail.com$/              
                    var matchArray=emailStr.match(regexEmail)
                    if (matchArray==null) {
                            return false
                    }
               return true;
            }
     // hàm kiểm tra xem text có trên 80 kí tự không       
    
    // ktra sdt là số từ 0-9 vsf có 10-11 chữ số
    function isPhone(phoneStr)
            {
                    var regexPhone = /^[0-9]{9,12}$/;            
                    var matchArray=phoneStr.match(regexPhone)
                    if (matchArray==null) {
                            return false
                    }
               return true;
            }
   
    function isName(nameStr)
            {
                    var regexAdd = /^(.*[@$!%*?&])$/;            
                    var matchArray=nameStr.match(regexAdd)
                    if (matchArray==null) {
                            return false
                    }
               return true;
            }
    // ktra tên k có gì đặc biệt
    
    
    function validate(){
        // lấy dữ liệu từ input
        var data = {
	    	phone: $('input[id="phone"]').val(),
            name: $('input[id="name"]').val(),
	        email: $('input[id="email"]').val(),
	    	textbox: $('input[id="textbox"]').val()

        }
        
        // xóa các thông tin báo lỗi
        $('.error').remove();
        // kiểm tra thông tin
       
        $.each(data,function(key,item){
            if (item == '') {
                var html = '<p style = "color:red" class = "error"> Vui lòng nhập thông tin! </p>';
                    $('input[id="'+key+'"]').after(html);
            }
            else if (key == 'email') {
                if (!isEmail(item)) {
                var html = '<p style = "color:red" class = "error"> Vui lòng nhập đúng định dạng email! </p>';
                $('input[id="'+key+'"]').after(html);
                
                }
            }
            else if (key == 'phone') {
                if (!isPhone(item)) {
                    var html = '<p style = "color:red" class = "error"> Số điện thoại không hợp lệ! </p>';
                    $('input[id="'+key+'"]').after(html);
                }
            }
            else if(item!="" && key=='email'&&key=='phone'){
                alert("dăng kí thanh cong")

            }
        
           
        })
       
    
    
    }
    
    document.getElementById("submit").addEventListener("click",validate)

     $('.area_input').on("click",function(){
        $('.loginwith').show()
        $('.login').show()
     })
     $(".login").on('click',function(){
        $('.loginwith').css('display','none')
        $('.login').css('display','none')

    })
     $('.fb').on('click',function(){
        location.assign("https://www.facebook.com/");
     })
     $(".gp").on('click',function(){
         location.assign('https://www.google.com.vn/')

     })
})    

