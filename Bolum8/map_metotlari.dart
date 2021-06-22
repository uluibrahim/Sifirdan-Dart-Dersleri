main(List<String> args) {
  Map<String, dynamic> map1 = Map();
  var map2 = <String, dynamic>{};

  map1["id"] = 5;
  map1["isim"] = "halil";
  map1["renk"] = "Yeşil";

  var yeniMap = Map.from(map1);
  var mapFromEntries = Map.fromEntries(map1.entries);

  List liste = [1, 2, 3];

  // map i dönüştürüp yeni ap oluşturmak
  var mapFromIterable = Map<String, String>.fromIterable(liste,
      key: (item) => "$item", value: (item) => "${item * 2}");
  print(yeniMap);

/** 
  // veri güncelleme
  map1.update("id", (value) => value*2);
  print(map1["id"]);
*/

// eğer o anahtar yoksa
  map1.update("id_yeni", (value) => value * 2, ifAbsent: () => 100);

  // eğer yoksa bu isimde yeni alan oluştur
  map1.putIfAbsent("soyad", () => "ulu");
  print(map1["soyad"]);

}   
