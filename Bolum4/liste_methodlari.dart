main(List<String> args) {
  List<int> sayilar = [3, 6, 5, 4, 8, 2, 1];

  print(sayilar.length); // liste uzunluğunu döndürür
  print(sayilar.first); //listenin ilk elemanını verir
  print(sayilar.last); // listenin son elemanını verir
  print(sayilar.isEmpty); // liste boş ise true , dolu ise false döndürür..
  print(sayilar
      .reversed); // elemanları tersten yazdırır.  anlık olarak verileri değiştirmez

  sayilar
      .remove(3); // listeyi gezer belirtilen değeri gördüğü ilk elemanı siler.
  sayilar.removeAt(2); // belirtile indexteki elemanı siler

  // sayilar.clear(); // tüm elemanları siler

  if (sayilar.contains(5)) {
    // contains içeriyor mu?  anlamındadır.
    print(true);
  }

  sayilar.elementAt(4); // 4. indexteki elemanı verir

  sayilar.indexOf(5); // verilen değerin hangi indexte olduğunu döndürür.

  sayilar
      .shuffle(); // elemanların yerlerini rastgele değiştiri.  Kart karmaya benzer
}
