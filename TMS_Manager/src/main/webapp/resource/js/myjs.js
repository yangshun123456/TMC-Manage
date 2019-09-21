$(function () {
    $().keypress(function(event){
        alert(123)
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if(keycode == '13'){
            var user=$("#user").val();
            var pass=$("#password").val();
            if(user==""&&pass!=""){
                $("#alert1").text("！用户名不能为空");
                return false;
            }else if(pass==""&&user!=""){
                $("#alert2").text("！密码不能为空");
                return false;
            }else if(user==""&&pass==""){
                $("#alert1").text("！用户名不能为空");
                $("#alert2").text("！密码不能为空");
                return false;
            }
            $("#form1").submit();
        }
    });
    $("#button").click(function () {
        var user=$("#user").val();
        var pass=$("#password").val();
        if(user==""&&pass!=""){
            $("#alert1").text("！用户名不能为空");
            return false;
        }else if(pass==""&&user!=""){
            $("#alert2").text("！密码不能为空");
            return false;
        }else if(user==""&&pass==""){
            $("#alert1").text("！用户名不能为空");
            $("#alert2").text("！密码不能为空");
            return false;
        }
        $("#form1").submit();
        // $.ajax({
        //     url:"../adminServlet",
        //     data:{
        //         'username':$("#user").val(),
        //         'password':$("#password").val()
        //     },
        //     success:function (result) {
        //         if(result=="ok") {
        //             window.location.href = "/telitem_war_exploded/view/index.jsp";
        //         }else{
        //             window.location.href = "/telitem_war_exploded/view/error.jsp";
        //         }
        //     },
        //     error:function (result) {
        //         alert(result);
        //         console.log(result.code);
        //     }
        // })
    });
    $("#password").blur(function () {
        if($("#password").val()==""){
            $("#alert2").text("！密码不能为空")
        }else{
            $("#alert2").text("");
        }
    });
    $("#user").blur(function () {
        var a=$("#user").val();
        if(a==""){
            $("#alert1").text("！用户名不能为空");
            return;
        }else{
            $("#alert1").text("");
        }
    });

})
