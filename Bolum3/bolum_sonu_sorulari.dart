/**
  Question1: parametre olarak bir tane int tipinde sayı alan fonksiyon yazınız. 
  bu fonksiyon aldığı değere kadar olan çifsayıların toplamını döndürsün

  Question2: Daire alanını hsaplayan  fonksiyonu yazınız  Pi sayısı opsiyonel olmalı.
  Eğer PI sayısı verilmediyse default olarak 3,14 alınmalı 

  Question3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız. 
  Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar mı  ikiz kenar veya eşkanar mı olduğunu ekrana yazdırsın.
  bir değer döndürmesin

// */

main(List<String> args) {
  print("Çift sayiların toplamı: ${ciftSayi(20)}");

  print(daireAlani(5));

  ucgeniBul(kenar1: 5,kenar2: 2,kenar3: 3);
}

// question 1

int ciftSayi(int sayi) {
  int toplam = 0;
  for (var i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

// question 2
double daireAlani(double r, [double pi = 3.14]) {
  return r * r * pi;
}

// question 3
void ucgeniBul({double kenar1 = 1, double kenar2 = 1, double kenar3 = 1}) {
  if ((kenar1 == kenar2) && (kenar2 == kenar3)) {
    print("Eşkenar üçgen");
  } else if ((kenar2 == kenar3) || (kenar2 == kenar1) || (kenar3 == kenar1)) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }
}
