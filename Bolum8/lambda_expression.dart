import '../Bolum3/fonksiyon_fat_arrow.dart';

/**
 * 
 * Lambda: isimsiz fonksiyonlardır Dartta her fonksiyon aslında bir nesnedir.
 * 
 * 
 */

main(List<String> args) {
  // sayilari topla fonksiyonunu lambda ile oluşturalım
  // lambda kullanabilmek için bir değişkene atama yapmak gerekir

  // Function topla = (int a, int b)=>print(a + b);
  Function topla = (int a, int b) {
    print(a + b);
  };

  topla(4, 5);

  var f2=(int s)=>s*2;  

  print(f2(4));
}

void sayilariTopla(int a, int b) {
  print(a + b);
}
