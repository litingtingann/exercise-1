import 'dart:html';
void main() {
  querySelector('#button').onClick.listen((MouseEvent e)=>start(int.parse(document.getElementById("text1").value),int.parse(document.getElementById("text2").value),e));
  querySelector('#button2')
    ..onClick.listen((MouseEvent e)=>start(1,100,e))
    ..onClick.listen(start1);
}
void start(int origin1,int origin2,MouseEvent e){
  if(origin1>origin2){
    var temp;
    temp=origin2;
    origin2=origin1;
    origin1=temp;
  }
  int sum=0;
  for(int i = origin1; i <= origin2; i++){
    sum=sum+i;
  }
  querySelector('#text3').value=sum.toString();
}
void start1(MouseEvent e){
  querySelector('#text1').value=1.toString();
  querySelector('#text2').value=100.toString();
}
