import 'dart:math';

import 'cember_daire_class.dart';
import 'ogrenci_class.dart';

/**
 * 
 * Soru1: CemberDaire isimli bir sınıf oluşturun. Bu sınıfın yarı çap alan kurucusu olmalı. Ayrıca cevre ve alan hesaplayan metotlar olmalı (pi: 3,14)
 * 
 * Soru2: Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin id ve not degeri tutulmalı. 100 Elemanlı bir listede id ve not degerlerini rastgele oluşturarak bu öğrencileri saklayın ve bu öğrencileri yazdıran metodu yazın.
 */

main(List<String> args) {
  //CemberDaire cember1 = CemberDaire(-9);
  // cember1.cevreVeAlanYazdir;

  List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);

  /**
  
   for (var item in tumOgrenciler) {
    print("İD: ${item.id}, NOT: ${item.not}");
  }

   */

  for (var item in tumOgrenciler) {
    print(tumOgrenciler);
  }

  double ortalama = notOrtalamasi(tumOgrenciler);
  print(ortalama);
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (var i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

double notOrtalamasi(List<Ogrenci> liste) {
  double _toplam = 0;

  for (var item in liste) {
    _toplam += item.not;
  }

  return _toplam / liste.length;
}
