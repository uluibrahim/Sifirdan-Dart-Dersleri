/**
 * Eğer parent sınıfın constructor metodu parametre alıyorsa, sınıftan türeyen sınıflarında aynı parametreleri alması gerekmektedir.
 * bu olaya super denmektedir.
 */
main(List<String> args) {
  Yuzbasi halil = Yuzbasi("Halil", 23);

  halil.memleketDegistir("Şanlıurfa");
}

class Asker {
  int yas = 20;
  String ad = "";
  String memleket = "Ankara";

  Asker(this.ad, this.yas) {
    print("Asker kurucu methodu çalıştı");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er kurucu methodu çalıştı");
  }

  void memleketDegistir(String sehir) {
    // super kullanarak parent classta ki değişkenlere ulaşabilir değişiklik yapabiliriz.
    super.memleket = sehir;
    print(this.memleket);
  }
}

class Yuzbasi extends Er {
  Yuzbasi(String ad, int yas) : super(ad, yas) {
    print("Yuzbasi kurucu methodu çalıştı");
  }
}
