class Like{
    constructor(data){
        this.data=data;
        this.root=null;
    }
    init(){
        this.rederDIV();
    }
    rederDIV(){
        let divHtml="";
         this.data.forEach((item) => {
            let liHtml = 
                `<div class="likeitem">
                <div class="likeimg">
                    <a href="#"><img src="${item.src}" alt=""></a>
                </div>
                <p class="liketit"><a href="#">${item.title}</a></p>
                <p class="likeprice float_l">${item.price}</p>
                <p class="likeplace float_r" >${item.place}</p>
            </div>`;

            
            divHtml+=`<div>${liHtml}</div>`
        });
        let html=`${divHtml}`
        this.root=$(html);
        this.root.appendTo(".likebox")
    }
                // <div class="likeitem">
                //     <div class="likeimg">
                //         <a href="#"><img src="${src}" alt=""></a>
                //     </div>
                //     <p class="liketit"><a href="#">${title}</a></p>
                //     <p class="likeprice float_l">${price}</p>
                //     <p class="likeplace float_r" >${place}</p>
                // </div>
}