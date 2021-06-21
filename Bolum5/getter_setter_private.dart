import 'dart:math';

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
}
