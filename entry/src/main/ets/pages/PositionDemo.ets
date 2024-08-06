@Entry
@Component
struct PositionDemo {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text("Demo")
        .position({
          top:0,
          right:0
        })



      Text("Demo222").width("100%")

      Text("Demo333").width("100%")

    }
    .width("100%")
    .height("100%")
    .backgroundColor(Color.Pink)
  }
}