@Entry
@Component
struct Border {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text("边框")
        .border({
          width:1,
          color:Color.Red,
          style:BorderStyle.Solid,
          radius:8
        })
        .padding({
          top:4,
          bottom:4,
          left:16,
          right:16
        })

      Button("Btn")
        .width(100)
        .height(100)
        .borderRadius("50%")


      Button("Btn")
        .width(100)
        .height(50)
        .borderRadius("50%")

      //
      // Button("Btn")
      //   .width(vp2px())
      //   .height("50vp")




    }.width("100%")

  }
}