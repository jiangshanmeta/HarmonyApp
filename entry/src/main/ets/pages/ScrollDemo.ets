interface GeneratedTypeLiteralInterface_1 {
  color: ResourceColor;
  text: string;
}

@Builder
function row($$: GeneratedTypeLiteralInterface_1){
  Row(){
    Text($$.text)
      .width("100%")
      .textAlign(TextAlign.Center)
  }
  .backgroundColor($$.color)
  .height(200)
  .width("100%")
}

@Entry
@Component
struct ScrollDemo {
  @State message: string = 'Hello World';

  build() {
    Scroll(){
      Column(){
        row({color:Color.Red,text:"A"})
        row({color:Color.Green,text:"B"})
        row({color:Color.Blue,text:"C"})
        row({color:Color.Yellow,text:"D"})
        row({color:Color.Orange,text:"E"})
        row({color:Color.Pink,text:"F"})

      }.width("100%")
    }
    .width("100%")
    .edgeEffect(EdgeEffect.Spring)
    // .height()
  }
}