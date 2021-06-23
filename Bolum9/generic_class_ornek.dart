import 'my_satack.dart';

main(List<String> args) {
  // burada her veri tipini gönderebiliyoruz ancak sağlıklı bir kullanım değildir
  MyStack myStack=MyStack();
  myStack.push("yeniEleman");
  myStack.push(3);

  GenericStack<int> g1=GenericStack(); // sadece int tipleri

  g1.push(2);
  g1.push(4);

  GenericStack<String> g2=GenericStack(); // sadece string tipleri

  g2.push("yeniEleman");
  g2.push("emre");
  
  GenericStack<bool> g3=GenericStack(); // sadece bool tipleri

  g3.push(true);
  g3.push(false);
}