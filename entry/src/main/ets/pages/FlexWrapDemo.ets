@Entry
@Component
struct FlexWrapDemo {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text("阶段选择")
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .padding(15)
        .width("100%")

      Flex({
        wrap:FlexWrap.Wrap
      }){
        Text("AAAAAA").padding(15).backgroundColor("#f1f1f1").margin(5)

        Text("BBBBBB").padding(15).backgroundColor("#f1f1f1").margin(5)

        Text("CCC").padding(15).backgroundColor("#f1f1f1").margin(5)


        Text("DDD").padding(15).backgroundColor("#f1f1f1").margin(5)

        Text("EEE").padding(15).backgroundColor("#f1f1f1").margin(5)

      }
    }
  }
}