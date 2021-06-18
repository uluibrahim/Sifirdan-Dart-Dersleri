main(List<String> args) {
  int yas = 18; //integer degerleri tutar. Tamsayı.
  double ortalama = 5.6; // double küsüratlı sayıları tutar
  num yil = 2021; // num int ve double  degerlerini tutabilir.
  String name = "Emre";

  print(name);
  // print içerisinde String olmayan bir değişkeni yazdırmak istersek tip dönüşümü olan toString kulllanılmalı.
  print(name + "'nin yaşı " + yas.toString());

  //boolean veri tipi degiskenin true (doğru) veya false (yanlış) olduğunu tutar.
  //kontrol edilmesi gereken durumlarda çokça kullanılır.

  bool stajyerMi = true;
  bool ogrenciMi = false;

  print(name + " Stajyer mi? " + stajyerMi.toString());
  print(name + " Ogrenci mi? " + ogrenciMi.toString());

  //Dart dilinde var tipi tüm tipleri kapsar.

  var surName = "ulu";

  var age=23;

  var mezun=true;

  // yukarıda görüldüğü gibi var tipi kullanımı diğer tüm veri tiplemelerini kapsamaktadır.

}
