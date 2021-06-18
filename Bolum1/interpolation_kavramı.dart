/**
 


Interpolation: string ifade içinde başka bir string ifadeyi $ifade olarak kullanabiliriz.
Eğer ifade birden fazla  alana sahipse ${ifade.method} şeklinde kullanılır.
interpolation diğer veri tipleri içinde geçerlidir.
 */

main(List<String> args) {
  String isim = "emre";
  String soyad = "bilek";
  String kursTanimi = "Dart dersleri";

  print(isim+""+soyad); // doğru bir kullanım değildir. Kötü programcılıktır.

  print("$isim $soyad"); // çok daha temiz kod 

  print("soyad $soyad'ın karakter sayısı "+ soyad.length.toString());

  print("soyad $soyad'ın karakter sayısı ${soyad.length}");

  double en=10;
  double boy=12;

  print("Eni $en boyu $boy olan dikdörtgenin alanı ${en*boy}'dır");
}
