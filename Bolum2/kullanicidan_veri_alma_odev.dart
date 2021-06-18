/*
QUESTION1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren kodu yazınız.
QUESTION2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazınız.
*/

import 'dart:io';

main(List<String> args) {
  // question1

  int not1;
  int not2;

  print("ilk notu giriniz:");
  not1 = int.parse(stdin.readLineSync()!);
  print("ikinci notu giriniz:");
  not2 = int.parse(stdin.readLineSync()!);
  double ortalama = (not1 + not2) / 2;
  print("İki notun ortalması: $ortalama");

  // question2

  double kdv = 0.18;

  double fiyat;
  double kdvliFiyat;
  print(" ürün fiyatını giriniz:");
  fiyat = double.parse(stdin.readLineSync()!);

  kdvliFiyat = fiyat + (fiyat * kdv);
  print("Kdv dahil fiyat: $kdvliFiyat");
}
