@Entry
@Component
struct Style {
  @State message: string = 'Hello World';

  build() {
      Column(){
        Text("小说简介")
          .width("100%")
          .margin({
            top:10,
            bottom:20
          })
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        Row(){
          Text("都市")
            .backgroundColor(Color.Pink)

          Text("生活")
            .fontColor("#f0f")
          Text("情感")
          Text("男频")
        }
        .width("100%")



        Header()


      }
      .width("100%")
      .height("100%")
      .backgroundColor(Color.White)
  }
}


@Component
struct Header{
  build() {
    Column(){
      Text("遥遥领先")
        .width("100%")
        .fontSize(24)

      Row(){
        Text("置顶")
          .fontColor(Color.Red)



        Text("新华社")
          .fontColor("#a1a1a1")


        Text("100评论")
      }
      .width("100%")


      Text("Web前端浅谈ArkTS组件开发 - 个人文章 - SegmentFault 思否 harmonyos - 「鸿蒙学习笔记」ArtTS基础入门 - 个人文章")
        .width("100%")
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
        .maxLines(2)
        .lineHeight(24)

      Image($r("app.media.startIcon"))
        .width("50%")

      Image("https://www.itheima.com/images/logo.png")
        .width(200)


      Column({space:16}){
        TextInput({
          placeholder:"username"
        })


        TextInput({
          placeholder:"please input"
        })
          .type(InputType.Password)

        Button("Login")
          .padding({
            top:5,
            bottom:5,
            left:20,
            right:20
          })


      }
      .padding(20)




    }
    .width("100%")
  }
}