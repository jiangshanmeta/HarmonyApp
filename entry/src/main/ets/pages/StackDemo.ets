@Entry
@Component
struct StackDemo {
  @State message: string = 'Hello World';

  @State arr:string[] = ['first','second']

  build() {
    Column(){
      Button("btn")
      Stack({
        alignContent:Alignment.Center
      }){
        Text("aa").backgroundColor(Color.Red).width(250).height(250)
        Text("bb").backgroundColor(Color.Pink).width(100).height(100)
        Text("CC").backgroundColor(Color.Green).width(50).height(50)
      }

      ForEach(this.arr,(item:string,index)=>{
        Text(item)
        Button(`${index}`)
      })
    }

  }
}