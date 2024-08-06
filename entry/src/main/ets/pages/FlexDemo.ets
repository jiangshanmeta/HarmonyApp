@Entry
@Component
struct FlexDemo {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({
        direction:FlexDirection.Row,
        justifyContent:FlexAlign.Center,
        alignItems:ItemAlign.Center
      }){
        Text()
          .width(80)
          .height(80)
          .backgroundColor(Color.Pink)
          .border({width:1,color:Color.Blue})

        Text()
          .width(80)
          .height(80)
          .backgroundColor(Color.Pink)
          .border({width:1,color:Color.Blue})

        Text()
          .width(80)
          .height(80)
          .backgroundColor(Color.Pink)
          .border({width:1,color:Color.Blue})

      }
      .width("100%")
      .height(600)
      .backgroundColor("#5f9a5c")



    }
    .height('100%')
    .width('100%')
    .backgroundColor("#ccc")
  }
}