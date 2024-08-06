@Entry
@Component
struct ListItemDemo {

  build() {
    Column(){
      Row(){
        Column(){
          Text("玩一玩")
            .fontSize(18)
            .fontWeight(FontWeight.Bolder)

          Text("签到兑礼 | 超多大奖 超好玩")
            .fontSize(12)
            .fontColor("#999")
        }
        .alignItems(HorizontalAlign.Start)

        Row(){
          Text("Image")
        }

      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width("100%")
      .height(80)
      .backgroundColor("#fff")
      .borderRadius(8)


      Row(){
        Text("Left")
          .layoutWeight(1)
          .backgroundColor(Color.Red)

        Text("Right")
          .backgroundColor(Color.Green)

      }
      .width("100%")

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#ccc")
    .padding(10)


  }
}