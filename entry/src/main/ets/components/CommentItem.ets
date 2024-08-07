import { CommentModel } from '../model/comment';

@Component
export struct CommentItem {
  @Require @Prop comment: CommentModel
  @State isLike:boolean = false;
  handleLike: ()=>void = ()=>{};

  build() {
    Column(){
      Row(){
        Image($r("app.media.avatar"))
          .width(30)
          .aspectRatio(1)
          .margin({
            top:10
          })
          .borderRadius(15)

        Text(this.comment.name)
          .fontSize(13)
          .fontColor(Color.Gray)
          .margin({
            top:10,
            left:8
          })

      }.width("100%")

      Text(this.comment.comment)
        .fontSize(13)
        .padding({
          left:40,
          top:0,
          bottom:8
        })
        .width("100%")

      Row(){
        Text(this.comment.time)
          .fontSize(11)
          .fontColor(Color.Gray)

        Row(){
          Image(this.comment.isLike? $r("app.media.like_active") : $r("app.media.like_default"))
            .width(15)
            .aspectRatio(1)

          Text(`${this.comment.like}`)
            .fontSize(11)
            .fontColor(Color.Gray)
            .margin({
              left:4
            })

        }
        .onClick(this.handleLike)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)

    }
    .width("100%")
    .alignItems(HorizontalAlign.Start)
    .padding({
      left:15,
      right:15,
      bottom:8
    })
  }
}