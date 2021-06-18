main(List<String> args) {
  // FOR DÖNGÜLERİ
  String name = "Halil";
  for (var i = 0; i < 10; i++) {
    print(name);
  }
  print("*************\n");
  // genellikle liste yapılarında kullanılan for türü "for in "dir

  List liste1 = ["emre", "hasan", "ali"];
  for (var value in liste1) {
    print(value);
  }
  print("*************\n");
  // listeleri for ile de gezebiliriz

  for (var i = 0; i < liste1.length; i++) {
    print(liste1[i]);
  }
  print("*************\n");
  // WHİLE DÖNGÜLERİ
  // şart true olduğu sürece while döngğsğ çalışır.

  int counter = 0;
  print("*************\n");

  while (counter < 5) {
    print(counter);
    counter++;
  }

  print("*************\n");

  do {
    print("İlk önce burası çalışır sonra şart kontrol edilir");
    counter++;
  } while (counter < 10);

  // break ve continue kavramları

  for (var i = 0; i < 10; i++) {
    if (i > 5) {
      break;
      // break ile karşılaşıldında işlem sonlandırılır.
    }
    print("i degeri : $i");
  }
  print("\n\n\n\n");
  for (var i = 0; i < 10; i++) {
    if (i > 5) {
      print("i degeri : $i");
    } else {
      continue;
      // continue ile karşılaşıldında alttaki işlemler yapılmadan döngünün başına dönülür.
    }
  }
  print("\n\n\n\n");

  // isimlendirilmiş  döngü

  disDongu:
  for (var i = 0; i < 4; i++) {
    // disDongu:for (var i = 0; i < 4; i++) bu kullanımla döngüye isim takmış olduk
    for (var j = 0; j < 4; j++) {
      if (i == 2) {
        break disDongu;
      }
      print("$i * $j = ${i * j}");
    }
    print("\n"); // \n  yazıldığında console da alt satıra geçer.
  }
}
