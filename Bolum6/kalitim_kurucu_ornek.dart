main(List<String> args) {
  Calisan hasan = Calisan(21, "Hasan", 4000);
  hasan.kendiniTanit();
}

class Kisi {
  int yas;
  String isim;

  Kisi(this.yas, this.isim) {
    print("Kisi kurucu metot");
  }

  void kendiniTanit() {
    print("ben $isim ve yasım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(int yas, String isim, this.maas) : super(yas, isim);
  @override
  void kendiniTanit() {
    // fonksiyonu tamamen değiştirmeden eklemeler yapılabilir
    super.kendiniTanit();
    print("Maaşım $maas");
  }
}
