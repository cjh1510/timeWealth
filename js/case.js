class Case{
    constructor(data){
        this.data=data;
        this.root=null;
    }
    init(){
        this.rederDIV();
        this.hover();
    }
    rederDIV(){
        let divHtml="";
         this.data.forEach((item) => {
            let liHtml = 
                `<div class="casetxt">
                <p>${item.price}</p>
                <p>${item.desc}</p>
                <div><a href="#">查看详情</a></div>
            </div>`;

            
            divHtml+=`<div class="casebox" style="background:url(${item.src});background-size:100% 100%;">${liHtml}</div>`
        });
        let html=`${divHtml}`
        this.root=$(html);
        this.root.appendTo(".goodcase")
    }
    hover(){
        $(".casebox").hover(function() {
            $(this).children(".casetxt").stop().slideToggle(500);
        });
    }

}