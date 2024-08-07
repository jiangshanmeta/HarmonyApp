@Styles
function uselessStyle(){
  .backgroundColor(Color.Gray)
  .height(200)
}

@Extend(Text)
function textExtend(color: ResourceColor,txt:string){
  .textAlign(TextAlign.Center)
  .backgroundColor(color)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(()=>{
    AlertDialog.show({
      message:txt
    })
  })
}



@Entry
@Component
struct SweiperDemo {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Swiper(){
        Text("1")
          .textExtend(Color.Pink,"first")

        Text("2")
          .textExtend(Color.Blue,"second")

        Text("3")
          .textExtend(Color.Orange,"third")

      }
      .width("100%")
      .height(100)
      .autoPlay(true)
      .interval(1000)
      .vertical(true)
      .indicator(
        Indicator.dot().color(Color.Black)
      )

      Button("000")
        .uselessStyle()
        .width("80%")


    }




  }
}