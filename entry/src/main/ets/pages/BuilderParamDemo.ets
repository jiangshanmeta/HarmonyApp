
@Builder
function overBuilder(){}

@Component
struct ChildPattern {
  @BuilderParam
  children: ()=>void = overBuilder

  build(){
    Column(){
      Text("render children")
      this.children()
    }
    .width("100%")
    .backgroundColor(Color.Pink)
  }
}


interface UserModel {
  name: string;
  age: number;
}

@Component
struct ChildRenderWithProps {
  @BuilderParam
  renderContent: (prop:UserModel)=> void = overBuilder;

  build() {
    Column(){
      Text("renderContent with Props")
        .fontSize(24)

      this.renderContent({name:"jiangshan",age:18})
    }
    .width("100%")
    .backgroundColor(Color.Orange)


  }

}



@Component
export struct BuilderParamDemo{
  @Builder
  slot(){
    Text("Text from parent")
  }

  @Builder
  renderUserInfo($$:UserModel){
    Row(){
      Text($$.name)
        .fontSize(24)
        .fontColor(Color.Gray)

      Text(`${$$.age}`)
        .fontSize(18)
        .fontColor(Color.Gray)
    }

  }

  build(){
    Column(){
      ChildPattern(){
        this.slot()
      }

      ChildRenderWithProps({
        renderContent:this.renderUserInfo
      })
        .margin({
          top:16
        })
    }
  }
}