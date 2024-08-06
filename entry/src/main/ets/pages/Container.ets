@Entry
@Component
struct Container {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text()
        .width(200)
        .height(100)
        .border({width:2})
        .backgroundColor(Color.Pink)

      Text()
        .width(200)
        .height(100)
        .border({width:2})
        .backgroundColor(Color.Pink)
        .margin(5)

      Text()
        .width(200)
        .height(100)
        .border({width:2})
        .backgroundColor(Color.Pink)




    }
    .width("100%")
    .height("100%")
    .backgroundColor("#ccc")
    .justifyContent(FlexAlign.Center)
  }
}