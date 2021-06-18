main(List<String> args) {
  // ternary kısa if kulllanımıdır.

  int num1 = 5;
  int num2 = 6;
  int kucukSayi;
  /*
  if (num1 > num2) {
    kucukSayi = num2;
  } else {
    kucukSayi = num1;
  }
  */

  //üstteki kodları ternary ile çok daha kısa yazabiliriz.

  // 1. kullanım
  //num1 > num2 ? kucukSayi = num2 : kucukSayi = num1;
  //2. kullanım
  kucukSayi=num1 > num2 ? num2:num1;
  print("kucuk sayi: $kucukSayi");



  // null durumlar için kısa if kullanımı.

  String? name=null;
  String? surname="ULU";
  String? mesaj;

  mesaj=name??surname; // name değişkeni null ise surname değişkenini mesaj değişkenine ata.

}
