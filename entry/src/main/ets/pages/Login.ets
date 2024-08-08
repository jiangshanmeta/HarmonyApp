import { router } from "@kit.ArkUI"
import {BusinessError} from "@kit.BasicServicesKit"

@Entry
@Component
struct Login {
  @State username:string = "";


  build() {
    Column({space:24}){
      Row(){
        Image($r("app.media.ic_public_arrow_left"))
          .width(24)
          .onClick(()=>{
            try{
              router.back()
              console.log("Succeed in returning to the first page")
            }catch (err){
              const code = (err as BusinessError).code;
              const message = (err as BusinessError).message;
              console.error(`Failed to return to the first page. Code is ${code}, message is ${message}`)

            }
          })

      }
      .width("100%")

      Image($r("app.media.huawei"))
        .width("50%")

      TextInput({
        placeholder:"Please Input UserName",
        text: $$this.username
      })

      TextInput({
        placeholder:"Please Input Password"
      })
        .type(InputType.Password)

      Button("Login")
        .width("100%")
        .onClick(()=>{
          router.pushUrl({
            url:"pages/Comment",
            params:{
              username:this.username
            }
          })
        })

      Row({space:8}){
        Text("注册账户")


        Text("忘记密码")

      }

    }
    .width("100%")
    .padding(16)


  }
}