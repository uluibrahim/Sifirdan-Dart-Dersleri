/**
 * 
 * Higher order functions: Bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi de aynı anda yapılabilir
 */

main(List<String> args) {
  List<int> liste = [1, 2, 3];
/**
 
 // forEach bir higher fonksiyondur
  liste.forEach((element) {
    print("Element $element");
  });

 */

// forEach birşey döndürmeyen int parametre alan fonksiyon ister
  liste.forEach(callback);

  // kendi forEach yapımızı oluşturalım

  kendiForEachyapim(liste, (int deger, int index) {
    print("Deger $deger, ve index $index");
  });
}

void kendiForEachyapim(List<int> liste, Function callback) {
  for (var i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void callback(int element) {
  print("Element $element");
}
