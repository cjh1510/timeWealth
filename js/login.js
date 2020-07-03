$(()=>{
    $(".zcbtn").click(function(){
        
        $(this).addClass("active").siblings().removeClass("active");

        let index=$(this).index();
        $(".zcfs").eq(index).removeClass("reg_view").siblings().addClass("reg_view")
    })


    $("#loginBtn").click(function(){
        
        let username=$.trim($("#username").val());
        let password=$.trim($("#pwd").val());
        
        let isCheck=$("#remember").is(":checked");
        // console.log(isCheck);
        
        if(username.length==0){
            alert("用户名不能为空");
            return;
        }
        if(password.length==0){
            alert("密码不能为空");
            return;
        }

        // console.log(username);
        // console.log(password)


     

        $.ajax({
            type: "post",
            url: "../server/login.php",
            dataType: "json",
            data: `username=${username}&password=${md5(password).slice(0,15)}`
        }).done(data => {
            // alert(data.msg);
            /* 如果 */
            if (data.status == "success") {
                localStorage.setItem("user_id", data.data.userId);
                localStorage.setItem("user_name", data.data.username);
                if(isCheck){
                    Cookie.setItem("user_id", data.data.userId,30);
                    Cookie.setItem("user_name", data.data.username,30);
                }
                alert(data.data.msg);
                /* 跳转 */
                location.href="./_index.html"    
            } else {
                alert(data.data.msg);
                // console.log(md5(password))
            }
        })    

        
        
    })


})