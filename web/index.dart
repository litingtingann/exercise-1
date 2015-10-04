import 'dart:html';
import 'dart:math' as math ;

void main() {
  querySelector('#sample_text_id')
    ..text = '1+2+...+100='
    ..onClick.listen(oneHundred);

  querySelector('#button_add_id')
    ..text='Add'
    ..onClick.listen(addThemUp);
}

int addDo(var a, var b){
  var c = a+b;
  return c;
}

void addThemUp(MouseEvent event){
  var x = int.parse(querySelector('#number_a').value);
  var y = int.parse(querySelector('#number_b').value);
  querySelector('#sample_text_id2').text=addDo(x,y).toString();
}

void oneHundred(MouseEvent event){
  var sum = 0;
  var i;
  for(i=1;i<=100;i++){
    sum=sum+i;
  }
  querySelector('#sample_text_id').text =sum.toString();
}
