@Entry
@Component
struct Third {
  @State cnt:number = 0;
  submit : ()=>void = ()=>{
    this.cnt++;
  }

  build() {
    Row(){
      Column(){
        Text(`${this.cnt}`)
        Son({submit:this.submit})
      }
      .width("100%")
    }
    .width("100%")


  }
}

@Component
struct Son {
  submit?:()=>void;

  build() {
    Row(){
      Button('add')
        .width(80)
        .onClick(()=>{
          this.submit?.()
        })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .height(56)

  }

}