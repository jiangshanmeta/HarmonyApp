
@Component
export struct HelloComponent {
  @State message:string = "Click Me"

  build() {
    Row() {
      Text(this.message)

        .fontWeight(FontWeight.Bold)
        .onClick(()=>{
          this.message = "Hello ArkUI"
        })

    }

  }


}

