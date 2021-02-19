
    $(document).ready(function(){
        $("#hoidap1").on("click",function(){
            $("#hoidap2").css("display","block")
            $("#Rep").show()
            $("#hoidap1").css("display","none")

        })
        $("#hoidap2").on("click",function(){
            $("#hoidap2").css("display","none")
            $("#hoidap1").show()
            $("#Rep").css("display","none")

        })
        
    })