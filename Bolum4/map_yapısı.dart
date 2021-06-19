/**
 * Map yapısı da Set yappısı gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı liste ve set ten ayıran özelliği elemanları key-value mantığı ile saklamasıdır. 
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerinin benzersiz olmasıdır.
 * 
 */

main(List<String> args) {
  Map<String, int> alanKodu = {
    "Ankara": 312,
    "İstanbul": 212,
    "Şanlıurfa": 414
  };

  print(alanKodu);

  print(alanKodu["Şanlıurfa"]);

  // map te kullanılacak çeşitli veri tipleri varsa dynamic tip kullanılır
  Map<String, dynamic> birey = {"isim": "ibrahim", "yas": 23, "kilo": 65.4};

  // boş map oluşturmak
  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme["yas"] = 24;
  print(deneme);

  print("\n\n");
  // map teki key veya value degerlerini gezmek

  for (var item in alanKodu.keys) {
    print(item);
  }

  print("\n\n");

  for (var item in alanKodu.values) {
    print(item);
  }

  print("\n\n");
  // key ve value leri çift halinde gezmek
  for (var item in alanKodu.entries) {
    print("Key : ${item.key}, Value : ${item.value}");
  }
}
