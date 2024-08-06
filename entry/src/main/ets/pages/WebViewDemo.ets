import { webview } from '@kit.ArkWeb';
import { BusinessError } from '@kit.BasicServicesKit';
import { TestType } from '@ohos/hypium/src/main/Constant';

interface Account {
  type: "ca" | "sa" | "mca"
  accountNumber: string;
  balance: number;
}


@Entry
@Component
struct WebViewDemo {
  controller: webview.WebviewController = new webview.WebviewController();
  @State message: string = 'Hello World';
  ports: webview.WebMessagePort[] = [];
  @State textFromReact: string = ""
  @State isShowWebview:boolean = false;
  account:Account = {
    type: "ca",
    accountNumber:"012-345-786",
    balance:30000
  }

  aboutToAppear(): void {


  }

  build() {
    Column(){
      Column(){

        Text(this.textFromReact || "no content")
          .fontSize(24)
          .fontWeight(FontWeight.Bolder)


        Button('Load H5 page')
          .onClick(() => {
            this.isShowWebview = true;
            try {
              this.ports = this.controller.createWebMessagePorts();
              this.ports[1].onMessageEvent((result:webview.WebMessage)=>{
                console.log("---> typeof response",typeof  result)
                AlertDialog.show({
                  message:"receive data from h5"
                })
                if(typeof result === "string"){
                  this.textFromReact = result;
                }else{
                  AlertDialog.show({
                    message:"content type not supported"
                  })
                }
              })
              this.controller.postMessage('__init_port__', [this.ports[0]], '*');

            } catch (error) {
              console.error(`ErrorCode: ${(error as BusinessError).code},  Message: ${(error as BusinessError).message}`);
            }
          })
          .margin({
            top:20
          })

        Button("Post message to H5")
          .onClick(()=>{

            try {

              if (this.ports && this.ports[1]) {
                this.ports[1].postMessageEvent(JSON.stringify(this.account));
              } else {
                console.error(`ports is null, Please initialize first`);
              }
            } catch (error) {
              AlertDialog.show({
                message:`${(error as BusinessError).message}`
              })
              console.error(`ErrorCode: ${(error as BusinessError).code},  Message: ${(error as BusinessError).message}`);
            }
            // this.ports[1].postMessageEvent());
          })
          .margin({
            top:8,
            bottom:8
          })

      }
      .width("100%")
      .backgroundColor(Color.Pink)




      if(this.isShowWebview){
        Web({ src: $rawfile("index.html"), controller: this.controller })
      }






    }
    .width("100%")
  }
}