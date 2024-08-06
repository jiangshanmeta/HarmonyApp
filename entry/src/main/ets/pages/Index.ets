import {router} from "@kit.ArkUI"
import {BusinessError} from "@kit.BasicServicesKit"
import { builderComponent } from './BuilderComponent';

import {HelloComponent } from './HelloComponent'
import {BuilderParamDemo} from "./BuilderParamDemo"

@Entry
@Component
struct Index {
  @State message: string = "Hello World";

  build() {
    Row(){
      Column() {
        BuilderParamDemo()

        builderComponent({text:"test builder annotation"})

        HelloComponent({
          message: "Prop Message"
        })
        Divider()

        Text($r("app.string.FirstPageTitle"))
          .fontSize(40)
          .fontWeight(FontWeight.Bold)

        Button(){
          Text("Next")
            .fontSize(30)
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
          console.log("Succeed in click the next btn")
          router.pushUrl({url:'pages/Second'}).then(()=>{
            console.log("Succeeded in jumping to the second page")
          }).catch((err:BusinessError)=>{
            console.log(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
          })

        })


        Button("Third")
          .margin({top:10})
          .onClick(()=>{
            router.pushUrl({url:"pages/Third"})
          })


        Button("WebView")
          .onClick(()=>{
            router.pushUrl({url:"pages/WebViewDemo"})
          })


        Button("Load Feature")
          .onClick(()=>{
            router.pushUrl({url:""})
          })

      }
      .width("100%")






    }
    .height("100%")
    // RelativeContainer() {
    //   Text(this.message)
    //     .id('HelloWorld')
    //     .fontSize(50)
    //     .fontWeight(FontWeight.Bold)
    //     .alignRules({
    //       center: { anchor: '__container__', align: VerticalAlign.Center },
    //       middle: { anchor: '__container__', align: HorizontalAlign.Center }
    //     })
    // }
    // .height('100%')
    // .width('100%')
  }
}