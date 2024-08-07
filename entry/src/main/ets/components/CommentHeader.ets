interface StyledBtnProp {
  isOn:boolean;
}


@Extend(Button)
function btnStyle($$:StyledBtnProp){
  .width(46)
  .height(32)
  .fontSize(12)
  .padding({
    left:5,
    right:5
  })
  .backgroundColor($$.isOn? "#fff":"#f7f8fa")
  .fontColor( $$.isOn?"#2f2e33":"#8e9298")
  .border({width:1,color: $$.isOn? "#e4e5e6":"#f7f8fa"})
}


@Component
export struct CommentHeader {
  @State tab: 'new' | "hot" = "new";
  build() {
    Row(){
      Text("全部评论")
        .fontColor("#222")
        .fontSize(20)
        .fontWeight(FontWeight.Bold)

      Row(){
        Button("最新")
          .btnStyle({isOn:this.tab === "new"})
          .onClick(()=>{
            this.tab = "new"
          })

        Button("最热")
          .btnStyle({isOn:this.tab === "hot"})
          .onClick(()=>{
            this.tab = "hot"
          })

      }
      .backgroundColor("#f7f8fa")
      .borderRadius(20)

    }
    .width("100%")
    .padding(16)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}