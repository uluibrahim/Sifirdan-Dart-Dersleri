import 'dart:ffi';

/**
 * Dart dili, null deger alması mümkün olmayan  ama null deger alacakmış gibi belirtilen nullable tiplere, non-nullable  gibi davranır  Buna type promation denir.
 * 
 * Dart tip sistemi , değişkenin nerede tanımlandığını ve nerede okunduğunu sürekli olarak analiz eder. Bir değişken null deger alacak sekilde olusturulmuş olabilir, ama okunmadan hemen önce null dışında bir deger atanırsa dart bunu tespit edebilir. 
 * 
 */

main(List<String> args) {
  String? mesaj;

  if (DateTime.now().hour < 12) {
    mesaj = "Günaydın";
  } else {
    mesaj = "İyi akşamlar";
  }

  print(mesaj);
  print(mesaj.length);

  // type promotion from base class  to derived class
  // temel sınıftan türetilmiş sınıfa terfi türü

  Object metin="metin";
  if (metin is String) {
    print(metin.length);
  }
}
