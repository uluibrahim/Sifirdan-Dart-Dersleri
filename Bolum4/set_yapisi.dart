/**
 * list den en önemli farkı elemanları sıralı olarak tutmaz. İndexleri kullanamayız.
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani  her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılmaktadır. 
 */
main(List<String> args) {
  Set<String> isimler = Set();

  isimler.add("Halil");
  isimler.add("İbrahim");
  isimler.add("Zehra");
  isimler.add("Halil");
  isimler.add("Zehra");
  isimler.add("Ayşe");
  isimler.add("Zehra");
  isimler.add("Ayşe");

  // set yapısında set dolaşılırken aynı değer alınmaz .
  for (var item in isimler) {
    print(item);
  }

  print("\n\n");

  // set yapısının başka şekilde tanımlanması

  Set<int> sayilar = Set.from([1, 2, 3, 4, 4, 56, 326, 5626, 623]);

  for (var item in sayilar) {
    print(item);
  }
  print("\n\n\n");
  // addAll methodunun kullanımı
  // bu method başka bşr listeyi set yapısına aktarmakta kullanılır.

  List<int> liste = [10, 20, 30, 40, 50, 60, 70, 80, 80, 80];

  sayilar.addAll(liste);

  for (var item in sayilar) {
    print(item);
  }
}
