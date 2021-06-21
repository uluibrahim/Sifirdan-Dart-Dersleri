import 'dart:math';

import 'musteri_calass.dart';
import 'veriTabaniIslemleri_class.dart';

// burada kullanacağımız bir dosya varsa buraya tanımlamak gerekmekte
main(List<String> args) {
  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  bool result = db.baglan();
  if (result) {
    print("Baglantı kuruldu");
  } else {
    print("Bağlantı kurulamadı");
  }

  // getter setter için

  Musteri musteri1 = Musteri(340);
  Musteri musteri2 = Musteri(340);
  
  musteri2.musteriNoAta = 400;
  musteri2.bilgileriYazdir();
  print(musteri2.musteriBilgisi);

  musteri1.bilgileriYazdir();
}
