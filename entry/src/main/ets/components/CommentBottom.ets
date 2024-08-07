@Component
export struct CommentBottom {
  @State text:string = ""
  onSubmit : (comment:string)=>void = ()=>{}

  build() {
    Row(){
      Row(){
        Image($r("app.media.edit"))
          .width(18)
          .aspectRatio(1)
          .margin({
            left:20
          })

        TextInput({
          placeholder:"写评论",
          text:$$this.text
        })
          .backgroundColor(Color.Transparent)
          .fontSize(18)
          .onSubmit(()=>{
            this.onSubmit(this.text)
          })
      }
        .backgroundColor("#f5f6f5")
        .borderRadius(Color.Pink)
        .borderRadius(20)
      .layoutWeight(1)


      Row(){
        Image($r("app.media.like"))
          .width(24)
          .margin({
            right:8
          })

        Image($r("app.media.star"))
          .width(24)
      }
      .padding(({
        left:16
      }))

    }
    .width("100%")
    .padding({
      left:15,
      right:15,
      top:8,
      bottom:8
    })
  }

}