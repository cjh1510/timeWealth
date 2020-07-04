$(()=>{
    // 选择标签，切换内容
    $(".zcbtn").click(function(){
        console.log(this)
        $(this).addClass("active").siblings().removeClass("active");

        let index=$(this).index();
        $(".zcfs").eq(index).removeClass("reg_view").siblings().addClass("reg_view")
    })

    let imgCode;
    /*不传值，统一走默认值*/
    let captcha = new Captcha({
        lineWidth: 1, //线条宽度
        lineNum: 2, //线条数量
        // dotR: 200, //点的半径
        // dotNum: 1000, //点的数量
        preGroundColor: [10, 80], //前景色区间
        backGroundColor: [150, 250], //背景色区间
        fontSize: 40, //字体大小
        fontFamily: ['Georgia', '微软雅黑', 'Helvetica', 'Arial'], //字体类型
        fontStyle: 'stroke', //字体绘制方法，有fill和stroke
        content: '0123456789', //验证码内容
        length: 4 //验证码长度
    });

    captcha.draw(document.querySelector('#captcha'), r => {
        console.log('验证码', r);
        imgCode = r;

        /* 自动触发标签的事件 */
        $("#imageCode").trigger("blur");
    });



    let options={
        "username":{
            reg:`/^[a-zA-Z]{2,6}$/.test(val)`,
            msg:"用户名不符合规范!!!"
        },
        "phone":{
            reg: `/^1[3-9]\\d{9}$/.test(val)`,
            msg: "手机号码不符合规范!!!"
        },
        "pwd":{
            reg: `/^[a-zA-Z0-9]{3,6}$/.test(val)`,
            msg: "密码不符合规范!!!"
        },
        "imageCode": {
            reg: "val == imgCode",
            msg: "图形验证码不正确！！！"
        }
    }

    $(".tname input").blur(function(){
        let option_id=this.id;
        // console.log("option_id", options[option_id]);
        let val =$.trim($(this).val());

        if(eval(options[option_id].reg)){
            $(this).next().text("");
            $(this).next().addClass("errortxt")
        }else{
            $(this).next().text(options[option_id].msg);
            $(this).next().removeClass("errortxt");
        }

    })

    $(".SmsValid input").blur(function() {
        let option_id = this.id;
        console.log("option_id", options[option_id]);

        let val = $.trim($(this).val());

        if (eval(options[option_id].reg)) {
            $(this).next().text("");
            $(this).parents(".form-item").removeClass("form-group-error");
        } else {
            $(this).next().text(options[option_id].msg);
            $(this).parents(".form-item").addClass("form-group-error");
        }
    })

    // 发送请求
    $("#regBtn").click(function(){
        let that=this;
        $("#username,#phone,#pwd").trigger("blur");
        // console.log($(".errortxt").length)
        if($(".errortxt").length==0){
            return;
        }else{

            let isCheck=$('[name=mytype]:checked').val();
            // $.each($("input[name='mytype']"),function(i,n){
            //     isCheck=$(that).val();
            // })
            // let isCheck=$('input:radio[name=mytype]:cheaked').val();
            if(isCheck===undefined){
                alert("请勾选注册倾向");
                
                return;
            }
            // let isCheck= $('input[@name=items][@checked]' ).val();
            // console.log(isCheck)

            
            // console.log($('[name=mytype]:checked').val())

            let data={
                username:$.trim($("#username").val()),
                phone:$.trim($("#phone").val()),
                pwd:md5($.trim($("#pwd").val())).slice(0,15)
            }
            console.log(data)

            // 发送请求注册
            $.ajax({
                url:"../server/reg.php",
                type:"post",
                data,
                dataType:"json",
            }).done(data=>{
                if(data.status=="success"){
                    alert("注册成功！！！");
                    location.href="./login.html"
                }else{
                alert(data.msg);
                }
            })
        }

    })
})