$(() => {
    let user_id = localStorage.getItem("user_id") || "";
    let user_name = localStorage.getItem("user_name") || "";
    console.log(user_id, user_name);
    if (user_id && user_name) {
        $(".userInfo").text(`${user_name}:欢迎您`);
        $(".status").text("注销");
    } else {
        $(".userInfo").text(`匿名用户:欢迎您`);
        $(".status").text("登录");
    }

    $(".status").click(function() {
        if ($(this).text() == "登录") {
            location.href = "./login.html";
        } else {
            localStorage.removeItem("user_id")
            localStorage.removeItem("user_name");
            /* 重新加载 */
            window.location.reload();
        }
    })
    /* 1、发送网络请求获取服务器端的数据 */
    getDataAndRenderUI("default");

    /* 获取总页码的数量 */
    getPageCount();

    function getPageCount() {
        $.ajax({
            type: "get",
            url: "../server/getPageCount.php",
            success: function(response) {
                // console.log("页码", response);

                /* 创建页码 */
                /* 
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li> */
                let pageStr = "";
                for (let i = 0; i < response; i++) {
                    pageStr += `<li class='p-class ${i == 0 ? "active":""}'><a href="javascript:void(0)">${i+1}</a></li>`;
                }
                $(pageStr).insertBefore("#nextPage");
            }
        });
    }

    function getDataAndRenderUI(sort, page = 0) {
        $.ajax({
            url: "../server/getList.php",
            data: {
                sort,
                page: page
            },
            dataType: "json",
        }).done(data => {
            let html = data.map(item => {
                return `
                <li class="item" data-id=${item.good_id}>
                    <div class="item-box">
                        <div class="item-img">
                            <a href="./xq.html">
                                <img src="${item.src1}" alt="">
                            </a>
                        </div>
                        <p class="price">￥${item.price}</p>
                        <p class="title"><a href="#">${item.title}</a></p>
                        <p>
                            <div class="vipcon">
                                <a href="#"><img src="../img/zuan3.gif" alt="钻石二级
                                    积分：1010分"title="钻石二级
                                    积分：1010"></a>
                                <a href="#"><img src="../img/vip_6.png" alt=""title="皇冠服务商"></a>
                            </div>
                            <p class="author"><a href="#">${item.author}</a></p>
                            <div>
                                <span class="place float_l">${item.place}</span>
                                
                            </div>
                        </h4>
                    </div>
                    <p class="buy addCart  float_r">购买</p>
                </li>
                `
            }).join("");
            $(".box-list").html(html);
        })

    }

    /* 2、加入购物车的点击事件 */
    $(".box-list").on("click", ".addCart", function() {
        console.log("++")
        console.log(this)
            /* user_id user_name */
        let user_id = localStorage.getItem("user_id") || "";
        let user_name = localStorage.getItem("user_name") || "";
        let good_id = $(this).parent().attr("data-id");

        console.log(user_id, user_name);
        console.log(good_id)
        if (user_id && user_name) {
            /* 发请求，执行添加到购物车 */
            $.ajax({
                url: "../server/addCart.php",
                data: { user_id, good_id }
            }).done(data => {
                console.log("返回值:", data);
            })

        } else {
            /* 跳转去登录 */
            location.href = "./login.html"
        }
    })

    /* 3、点击按钮的时候加入购物车 */
    $("#cart").click(function() {
        location.href = "./cart.html"
    })


    /* 4、排序功能 */
    $(".sort >li").click(function() {

        /* 设置选中状态 */
        $(this).addClass("cur").siblings().removeClass("cur");
        // let sortType = $(this).attr("data-sort");
        let sortType = $(this).data().sort;
        // console.log("sortType", sortType);

        getDataAndRenderUI(sortType);

    })

    /* 5、分页功能 */
    $(".pagination").on("click", ".p-class", function(e) {

        /* 排除上一页和下一页的页面点击事件 */
        // if ($(this).parent()[0].id == "prevPage" || $(this).parent()[0].id == "nextPage") return;

        /* 设置选中状态的切换 */
        $(this).addClass("active").siblings().removeClass("active");
        let page = $(this).text() * 1 - 1;
        // console.log(page);
        getDataAndRenderUI($(".cur").data().sort, page)
    })


    /* 上一页和下一页的功能 */
    $("#prevPage,#nextPage").click(function() {

        /* 设置选中状态 */
        let page = $(".active").text() * 1 - 1;
        if (this.id == "prevPage") {
            page--;
        } else if (this.id == "nextPage") {
            page++;
        }

        $(".p-class").eq(page).addClass("active").siblings().removeClass("active")
        getDataAndRenderUI($(".cur").data().sort, page)
    })
})