main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{"yas": 24};
  var mySet = <String>{"emre", "hasan"};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //spreads operatör kullanımı
  // ... kulllanımıdır
  // aynı kullanılım set ve map içinde kullanılabilir.
  var sonListe = [...tekSayilar, ...ciftSayilar];

  // listeye liset eklemek
  //sonListe.addAll(tekSayilar);
  //sonListe.addAll(ciftSayilar);

  print(sonListe);
}
