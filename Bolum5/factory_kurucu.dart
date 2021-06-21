import 'ilk_sinif_ornek.dart';

main(List<String> args) {
  Ogrenci ibrahim = Ogrenci.FactoryKurucu(-8, "ibrahim");
}

class Ogrenci {
  int id = 0;
  String ad = "";

  Ogrenci(this.id, this.ad) {
    print("kurucu method çalıştı");
  }
  // constructor larda return kullanılamaz.
  // bu nedenle factory kullanmamız gerekmektedir

  // factory örneği

  factory Ogrenci.FactoryKurucu(int id, String ad) {
    // factory kullanılıyorsa return etmek zorunludur.
    if (id <= 0) {
      return Ogrenci(5, ad);
    } else {
      return Ogrenci(id, ad);
    }
  }
}
