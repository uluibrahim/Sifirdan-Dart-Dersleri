import 'dart:io';

/**
 * Uncomplated : Tamamlanmamış
 * Complated: Tamamlanmış
 * 
 * single thread: uzun süren işlemlerin yapıldığı yapı
 * 
 * 
 */

main(List<String> args) {
  print("Anne çocuğu ekmek  almaya yollar");

  uzunSurenIslem();
  print("Anne kahvaltı hazırlar");
  print("Kahvaltı hazır");
}

void uzunSurenIslem() {
  print("Cocuk ekmek almak için evden çıkar");
  /**
   * sleep(Duration(seconds: 5)); // bekleme süresi
  print("Çocuk ekmek aldı");
   */

  // Asenkron

  Future.delayed(Duration(seconds: 10), () {
    // bekleme süresinden sonra çalışacak kısım
    print("Çocuk ekmek aldı");
  });
}
