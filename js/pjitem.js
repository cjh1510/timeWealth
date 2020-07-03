class Pjitem{
    constructor(data){
        this.data=data;
        this.root=null;
    }
    init(){
        this.rederUI();
        this.addEventHandler();
    }
    rederUI(){
        let typeHtml=this.data.types.map((item,idx)=>
            `<li class=${idx==0?"active2":""}>$${item}</li>`).join("");
        let ulHtml="";

        this.data.data.forEach((item, index) => {
            let liHtml = item.map(ele => {
                return `<li class="float_l text_ellipsis"><a href="#" class="text_ellipsis">${ele.price}<span>${ele.title}</span></a><i class="float_r">${ele.author}</i></li>`;

            }).join("");
            ulHtml +=`<ul class="pjlist ${index==0?"current2":""}">${liHtml}</ul>`;
        });

        let html=`<div class="pjtop">
        <ul class="pjtop-list">${typeHtml}</ul>
        </div>
        <div class="pjitem">${ulHtml}</div>`;


        this.root=$(html);
        this.root.appendTo(".porjectbox-con")

    }
    addEventHandler() {
        let self = this;
        this.root.find(".pjtop-list").children("li").mouseenter(function() {
            /* 1、设置当前标签的选中状态(排它) */
            $(this).addClass("active2").siblings().removeClass("active2");
            let index = $(this).index();
            /* 2、设置让列表进行切换 */
            // console.log($(".list", self.root));
            $(".pjlist", self.root).eq(index).addClass("current2").siblings().removeClass("current2");
        })
    }

}