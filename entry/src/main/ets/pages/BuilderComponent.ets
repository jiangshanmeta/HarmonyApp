interface BuilderComponentProps {
  text:string;
}

 @Builder
 export function builderComponent(props:BuilderComponentProps){
  Row(){
    Text(`props: ${props.text}`)
  }
}