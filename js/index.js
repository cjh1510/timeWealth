class Serlist{
    constructor(data){
        this.data=data;
        this.root=null;
    }
    init(){
        this.rederUI();
        this.addEventHandler();
    }
    rederUI(){
        let typeHtml = this.data.types.map((item, idx) => `<li class=${idx ===0 ? "active1":""}>${item}</li>`).join("");
        let ulHtml = "";

        this.data.data.forEach((item, index) => {
            let liHtml = item.map(ele => {
                return `<li class="Blist-item">
                           <img src=${ele.src}>
                           <h3 class="Btitle">${ele.title}</h3>
                           <p class="Bdesc">${ele.desc}</p>
                           <p class="Bprice text_ellipsis">
                               <span>${ele.price1}</span><br>
                               <span>${ele.price2}</span><br>
                               <span>${ele.price3}</span>
                           </p>
                     </li>`;

            }).join("");

            ulHtml += `<ul class="Blist Bcurrent ${index==0?"current":""}">${liHtml}</ul>`;
        });
                let html = `<div class="Box">
                    <div class="Box-header">
                        <h2 class="title">${this.data.title}</h2>
                        <ul class="Box-header-list">${typeHtml}</ul>
                    </div>
                    <div class="Box-content">
                        <div class="Bleft">
                            <li><img src=${this.data.srcA} alt=""></li>
                            <li><img src=${this.data.srcB} alt=""></li>
                        </div>
                        <div class="Bright">${ulHtml}</div>
                    </div>
                </div>`;


        this.root = $(html);
        this.root.appendTo(".servicelist");
    }
    addEventHandler() {
        let self = this;
        this.root.find(".Box-header-list").children("li").mouseenter(function() {
            /* 1、设置当前标签的选中状态(排它) */
            $(this).addClass("active1").siblings().removeClass("active1");
            let index = $(this).index();
            /* 2、设置让列表进行切换 */
            // console.log($(".list", self.root));
            $(".Blist", self.root).eq(index).addClass("Bcurrent").siblings().removeClass("Bcurrent");
        })
    }
}

