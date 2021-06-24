import 'dart:math';

/**
 * 
 * Sınıflarımızı oluşturuken oluşturduğumuz değişkenler (property) için de null safety özellikleri geçerlidir
 * 
 * Bu propertylerin getter ve setter metotları doğrudan beya dolaylı yoldan vardır 
 *  bundan dolayı da bu değişkenler aynı scope içinde farklı degerler üretebilirler. Siz bu yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz. 
 * 
 * Bunu çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken üzerinden kontrolleri yapmanızdır. 
 */

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return "string ifade";
    } else
      return null;
  }
}

main(List<String> args) {
  RastgeleMetinUretici uretici1 = RastgeleMetinUretici();
 String? uretilenDegrer=uretici1.degerUret();

  if (uretilenDegrer == null) {
    print("Null deger getirildi");
  } else {
    metniYazdir(uretilenDegrer);
  }
}

void metniYazdir(String ifade) {
  print(ifade);
}
