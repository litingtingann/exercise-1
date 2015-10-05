import 'dart:html';

void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(add);
}


void add(MouseEvent event){
  var sum=0;
  for (var i = 0; i < 100; i++) {
    sum=sum+i;
  }
  print('1+2+3+бн+100=');
  querySelector('#sample_teat_id').text = sum.toString();
}
