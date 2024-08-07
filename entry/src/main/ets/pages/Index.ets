import {router} from "@kit.ArkUI"
import {BusinessError} from "@kit.BasicServicesKit"
import {BuilderParamDemo} from "./BuilderParamDemo"

@Entry
@Component
struct Index {
  @State message: string = "Hello World";

  build() {

    Column({space:8}) {

      Text($r("app.string.FirstPageTitle"))
        .fontSize(40)
        .fontWeight(FontWeight.Bold)

      BuilderParamDemo()

      Button("CallbackDemo")
        .onClick(() => {
          router.pushUrl({ url: "pages/CallbackDemo" })
        })

      Button("WebViewDemo")
        .onClick(() => {
          router.pushUrl({ url: "pages/WebViewDemo" })
        })


      Button() {
        Text("Login")
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .margin({
        top: 20
      })
      .backgroundColor("#0D9FFB")
      .padding({
        top:5,
        bottom:5,
        left:20,
        right:20
      })
      .onClick(() => {
        router.pushUrl({url:"pages/Login"}).then(() => {
          console.log("Succeeded in jumping to the second page")
        }).catch((err: BusinessError) => {
          console.log(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
        })
      })

      Button("Comment")
        .onClick(() => {
          router.pushUrl({ url: "pages/Comment" })
        })

    }
    .width("100%")



  }
}