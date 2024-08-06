import { router } from "@kit.ArkUI"
import {BusinessError} from "@kit.BasicServicesKit"

@Entry
@Component
struct Second {
  @State message : string = "Hi there"


  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button(){
          Text("Back")
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:20
        })
        .backgroundColor("#0D9FFB")
        .width("40%")
        .height("5%")
        .onClick(()=>{
          console.log("succeed in click the back btn")

          try{
            router.back()
            console.log("Succeed in returning to the first page")
          }catch (err){
            const code = (err as BusinessError).code;
            const message = (err as BusinessError).message;
            console.error(`Failed to return to the first page. Code is ${code}, message is ${message}`)

          }

        })

      }.width("100%")

    }
    .width("100%")

  }

}