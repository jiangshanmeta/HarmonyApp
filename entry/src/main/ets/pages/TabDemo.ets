@Entry
@Component
struct TabDemo {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Tabs({
        barPosition:BarPosition.End
      }){
        TabContent(){
          Text("首页内容")
            .backgroundColor(Color.Red)
        }
        .tabBar("首页")
        .backgroundColor(Color.Pink)

        TabContent(){
          Text("我的内容")
        }.tabBar("我的")

        TabContent(){
          Text("发现内容")

        }
        .tabBar("推荐")

      }

    }
  }
}