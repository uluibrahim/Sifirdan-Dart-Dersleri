main(List<String> args) {
  cevreyiHesapla();
  alanHesapla(5, 4);

  double result = alanHesapla2(6, 8);

  double hacim =
      hacimHesapla(8, 9, 10); // fonksiyondan gelen degeri değişkene atamak
  print(hacim);
  print(hacimHesapla(5, 6, 7)); // değişken kullanmadan direk olarak yazdırmak.
}

// parametre almayan fonksiyon
cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;

  print("Dikdörtgenin çeversi: $cevre");
}

// parametre alan fonksiyon
alanHesapla(double en, double boy) {
  double alan = en * boy;

  print("Dikdörtgenin alanı: $alan");
}

// geriye değer döndüren fonksiyon
double alanHesapla2(double en, double boy) {
  double alan = en * boy;

  return alan;
}

double hacimHesapla(double en, double boy, double yukseklik) {
  double hacim = en * boy * yukseklik;
  return hacim;
}
