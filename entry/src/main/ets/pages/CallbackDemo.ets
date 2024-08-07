@Entry
@Component
struct CallbackDemo {

  @State msg : string = ""

  build() {
    Column({space:20}){

      TextInput({
        text:this.msg
      })
        .onChange((e)=>{
          this.msg = e;
        })



      ChildCom({
        msg: this.msg,
        callback:()=>{
          console.log(this.msg)
          this.msg = "nil"
        }
      })

    }
  }
}

@Component
struct ChildCom {
  @Prop msg:string = ""

  callback:()=>void =  ()=>{}

  build() {
    Column(){
      Text(this.msg || "empty")
        .fontSize(24)
        .width("100%")
      Button("reset")
        .onClick(()=>this.callback())
    }
    .backgroundColor(Color.Pink)
    .width("100%")
  }

}