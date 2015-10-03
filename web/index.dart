import 'dart:html';
void main()
{
  querySelector("#btn1")
    ..onClick.listen(Add);
  querySelector("#btn2")
    ..onClick.listen(Clear);
}

Add(MouseEvent event) {
  var s = 0;
  var i;
  for (i = 1;i <= 100;i++) {
    s = s + i;
  }
  querySelector('#txt1').value=s.toString();
}

Clear(MouseEvent event) {
  querySelector('#txt1').value='';
}