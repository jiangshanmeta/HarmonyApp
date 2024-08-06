@Entry
@Component
struct StateDemo {
  @State message: string = 'Hello World';


  build() {
    RelativeContainer() {
      Parent()
    }
    .height('100%')
    .width('100%')
  }
}


@Component
struct Child{
  // 父组件的只是初始化，不同步更新
  @State ccnt:number = 100;


  build() {

    Button(`${this.ccnt}`)


  }
}

interface Operations {
  reset:()=>void
}

@Component
struct LinkChild{
  // 父组件更新 Link也更新
  @Link ccnt:number;
  // @Prop operations: Operations


  build() {
    Button(`Link ${this.ccnt}}`)
      .backgroundColor(Color.Green)
      // .onClick(this.operations.reset)
  }

}


@Component
struct Parent {
  @State cnt:number = 0;



  build() {
    Row(){
      Column(){
        Child({ccnt:this.cnt})
        Text(`${this.cnt}`)
        Button("increase")
          .onClick(()=>{
            this.cnt++;
          })

        LinkChild({ccnt:this.cnt, })
      }
    }

  }
}