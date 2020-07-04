$(()=>{
    $(function(){
        //获取url中的参数
        function getUrlParam(name) {
         var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
         let r = window.location.search.substr(1).match(reg); //匹配目标参数
         if (r != null) return unescape(r[2]); return null; //返回参数值
        }
        //接收URL中的参数booksId
        var id = getUrlParam('newsid');
        console.log('id:'+id);
        $.ajax({
        data:{id},
        type:'get',
        url:'../server/xq.php',
        dataType:'json',}).done(data=>{
            console.log(data);
            // data = dataTool(data);
            renderUI(data);
        })
        function renderUI(data){
            console.log(data);
            console.log(data[0])
                let html= `<div class="main-a float_l">
                        <div class="bigimg">
                            <img src="${data[0].src1}" alt="">
                        </div>
                        <div class="smallimg">
                            <img src="${data[0].src1}" alt="">
                        </div>
                    </div>
                    <div class="main-b float_r">
                        <h3>${data[0].title}</h3>
                        <div class="price">
                            价格： ￥${data[0].price}
                        </div>
                        <div class="star">
                            <span class="pf1 float_l">评分</span>
                            <span class="pf2 float_l"></span>
                        </div>
                        <div class="buybtn ">
                            <a href="#">立即购买</a>
                        </div>
                        <div class="border-btom">
                            <span>直接雇佣或定制，一对一服务，满意再付款，交易有保障
                            </span>
                            <div class="yc_bg"></div>
                        </div>
                    </div>`;
        
                    $(".bg-main").html(html);
                
                
            
        }
    })
})
    
