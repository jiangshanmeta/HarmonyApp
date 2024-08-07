import { CommentBottom } from '../components/CommentBottom'
import { CommentHeader } from '../components/CommentHeader'
import { CommentItem } from '../components/CommentItem'
import { CommentModel } from '../model/comment'

@Entry
@Component
struct Comment {
  @State comments: CommentModel[] = [
    {
      name:"张角",
      comment:"苍天已死 黄天当立",
      like:9,
      time: "1小时前",
      isLike: true,
    },
    {
      name:"黄巢",
      comment: "待到秋来九月八，我花开后百花杀。冲天香阵透长安，满城尽带黄金甲。",
      like: 1926,
      time: "800年前",
      isLike: false,
    },
    {
      name: "林则徐",
      comment:"苟利国家生死以，岂因祸福避趋之",
      like: 0,
      time:"1840年",
      isLike: false,
    },
    {
      name: "黄巢",
      comment: "飒飒西风满院栽，蕊寒香冷蝶难来。他年我若为青帝，报与桃花一处开。",
      like: 10,
      time: "刚刚",
      isLike: false,
    },
    {
      name:"文天祥",
      comment: "辛苦遭逢起一经，干戈寥落四周星。山河破碎风飘絮，身世浮沉雨打萍。惶恐滩头说惶恐，零丁洋里叹零丁。人生自古谁无死？留取丹心照汗青。",
      like:384,
      time: "宋朝",
      isLike: false,
    },
    {
      name:"曹操",
      comment: "对酒当歌，人生几何！譬如朝露，去日苦多。慨当以慷，忧思难忘。何以解忧？唯有杜康。青青子衿，悠悠我心。但为君故，沉吟至今。呦呦鹿鸣，食野之苹。我有嘉宾，鼓瑟吹笙。明明如月，何时可掇？忧从中来，不可断绝。越陌度阡，枉用相存。契阔谈讌，心念旧恩。月明星稀，乌鹊南飞。绕树三匝，何枝可依？山不厌高，海不厌深。周公吐哺，天下归心。",
      like: 486,
      time:"汉",
      isLike: false,
    },
    {
      name: "苏轼",
      comment:"横看成岭侧成峰，远近高低各不同。不识庐山真面目，只缘身在此山中。",
      like: 6,
      time:"宋",
      isLike:false,
    }

  ]


  build() {
    Column(){

      CommentHeader()

      List(){

        ForEach(this.comments,(comment:CommentModel,index)=>{
          ListItem(){
            CommentItem({
              comment,
              handleLike:()=>{

                if(comment.isLike){
                  comment.like--;
                }else{
                  comment.like++;
                }
                comment.isLike = !comment.isLike;
                this.comments.splice(index,1,comment)
              }
            })
          }
        })

      }
      .width("100%")
      .layoutWeight(1)
      .padding({
        bottom:10
      })
      .divider({
        strokeWidth:0.5,
        color:Color.Gray,
        startMargin:12,
        endMargin:12
      })


      CommentBottom({
        onSubmit:(comment)=>{
          this.comments.unshift({
            name:"anonymous",
            comment,
            like:0,
            isLike:false,
            time:"刚刚"
          })
        }
      })

    }
    .width("100%")
    .height("100%")
  }
}