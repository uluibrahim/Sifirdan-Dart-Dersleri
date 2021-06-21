/**
 * 
 * Sınıf: Kendi veri türlerimiz veya soyut olan taslaklara denir. kendi içinde değişkenlere ve methodlara sahiptir. 
 * istediğimiz bir nesnenin veya varlığın bilgisayar dilinde tanımıdır. 
 * 
 * Nesne: Oluşturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.part 
 * 
 * Sınıf eğer uzakltan kumandalı bir araba ise  nesne onu kontrol etttiğimiz kumandadır.
 */

main(List<String> args) {
  // sınıftan nesne üretmek
  Ogrenci emre = Ogrenci();
  Ogrenci halil = Ogrenci();
  var ibrahim = Ogrenci();

  // sınıftaki değişkenlere ve methodlara ulaşmak

  emre.ogrAd = "Emre Altunbilek";
  emre.ogrNo = 15;
  emre.aktifMi = true;
  emre.derCalis();
}

// sınıf tanımlamak
// sınıfların isimleri kesinikle buyuk harfle başlamalıdır.

class Ogrenci {
  // sınıf içinde tanımlanan değişkenler sadece o sınıfa aittir.

  // sınıfa ait değişkenlere "instance veriable " denir.
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;

  void derCalis() {
    print("Ogrenci ders çalışıyor");
  }
}
