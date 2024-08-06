
@Builder
function overBuilder(){}

@Component
struct Child {
  @Builder
  doNothingBuilder(){}

  @BuilderParam
  customBuilderParam: ()=>void = this.doNothingBuilder;

  @BuilderParam
  customOverBuilderParam: ()=>void = overBuilder

  build(){
    Column(){
      this.customOverBuilderParam()
    }
  }

}

@Component
export struct BuilderParamDemo{
  @Builder
  slot(){
    Text("Text from parent")
  }

  build(){
    Column(){
      Child({customOverBuilderParam:this.slot})
    }
  }
}