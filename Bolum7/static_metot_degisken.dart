import '../Bolum3/fonksiyon_fat_arrow.dart';

/**
 * 
 * Sınıflarımızda nesne üretmeden bazı değişkenlere ve metotlara erişmek isteyebiliriz Burada karşımıza static kavramı çıkar
 * 
 * 
 * Static kulanarak nesne değil sınıf değişkenleri ve methodları  oluşturabiliriz.
 * Bir sınıfta tanımlanan method ve değşkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerideğil sınıfın metot ve değişkenleridir. 
 * 
 * Ayrıca static değişkenler kullanıla kadar deger almazlar, bellekte yer ayrılmaz
 * Static metotların içinde this anahtar kelimesi kullanılamaz
 * 
 * Static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metot içinden static değerlere erişilebilir
 * 
 * 
 */

main(List<String> args) {
  Matematik m1 = Matematik(3, 5);
  m1.topla();
  m1.topla();
  m1.cikar();
  m1.cikar();
  m1.topla();

  print("\n");

  // print("Toplam işlem sayısı ${m1.toplamIslemSayisi}");

  Matematik m2 = Matematik(73, 5);
  m2.topla();
  m2.topla();
  m2.cikar();

  // print("Toplam işlem sayısı ${m2.toplamIslemSayisi}");

  //NOT: toplamIslemSayısı değişkeni static olmadığından her farklı nesnede baştan başlıyor
  // eğer static tanımlanırsa class a ait olacağından program kapatılana kadar yaşamını sürdürecektir

  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}");

  //static metot ve değişkenlere sınıf adıyla erişilir ve kullanılır.
  Matematik.pi;
  Matematik.sinifAdiniYaz();
}

class Matematik {
  // instance veriable
  int _sayi1;
  int _sayi2;
  // int toplamIslemSayisi = 0;

  // class veriable
  static double pi = 3.4;
  static int toplamIslemSayisi = 0;

  Matematik(this._sayi1, this._sayi2);

  static void sinifAdiniYaz() {
    print("Ben matematik sınıfıyım");
  }

  topla() {
    // statik olmayan fonksiyon içeriisnde statik olan fonksiyon kullanılabilirken.
    //  statik olan fonksiyon içeriisnde statik olmayan fonksiyon kullanılamaz.
    sinifAdiniYaz();
    toplamIslemSayisi++;
    print("Toplam: ${_sayi1 + _sayi2}");
  }

  cikar() {
    toplamIslemSayisi++;
    print("Fark: ${_sayi1 - _sayi2}");
  }
}
