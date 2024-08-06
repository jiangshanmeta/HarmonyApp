@Entry
@Component
struct Login {


  build() {
    Column({space:24}){
      Image($r("app.media.huawei"))
        .width("50%")

      TextInput({
        placeholder:"Please Input UserName lah"
      })

      TextInput({
        placeholder:"Please Input Password"
      })
        .type(InputType.Password)

      Button("Login")
        .width("100%")

      Row({space:8}){
        Text("注册账户")


        Text("忘记密码")

      }

    }
    .width("100%")
    .padding(16)


  }
}