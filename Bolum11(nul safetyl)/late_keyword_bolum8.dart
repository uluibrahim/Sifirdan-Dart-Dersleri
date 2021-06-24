/**
 * Bazı değişkenler veya propertyler non-nullable olmalıdır ama ilk deger ataması hemen gerçekleşmeyecektir. Bu durumlarda late anahtar kelimesi kullanılır. 
 * 
 * Bir değişkenşn önğne late yazdığınızda Dart'a şunları söylemiş olursunuz
 * 1-bu değişkene deger atama
 * 2- değeri sonradan atacaksın
 * 3- bu degeri sen okumadan initialize edeceğim
 * 
 * Eğer değişkene değer atamadan okumayı çalışırsanız hata alırsınız
 * 
 */

class Yemek {
  late final String tanim;
  late final int fiyat;
  Yemek(int fiyat) {
    this.fiyat = fiyat;
  }
  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

main(List<String> args) {
  final yemegim = Yemek(10);

  yemegim.setTanim("kuru fasulye");

  print(yemegim.tanim);
}
