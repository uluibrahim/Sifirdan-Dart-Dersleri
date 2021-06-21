main(List<String> args) {
  /**
  Araba honda = Araba();

  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true;
  honda.bilgileriGoster();
   */

  Araba opel = Araba("Opel", 2020, false);


  // isimlendirilmiş constructor kullanımı

  Araba audi=Araba.markasizConstructor(2021, true);
}

class Araba {
  String? marka;
  int? modelYili;
  bool? otomatikMi;

  void bilgileriGoster() {
    print(
        "Arabanın markası: $marka, model yılı: $modelYili, otomatik mi?: $otomatikMi");
  }

  // constructor methodu class adıyla aynı isimde olur
  // sınıf  kullanıldığında ilk çalışacak olan methodtur

  /**
  Araba() {
  print("Kurucu (constructor) method çalıştı");
  }
   */

  // parametre alabilen kurucu fonksiyon

/**
  Araba(String marka, int modelYili, bool otomatikMi) {
    // fonksiyona gelen parametreler sadece fonksiyon içinde hayat bulur
    print("Kurucu (constructor) method çalıştı");
  }
 */

  // this kullanımı

  Araba(this.marka, this.modelYili, this.otomatikMi) {
    // this kullanarak alınan parametreleeri class içindeki değişkenlere atamış olduk

    print("Kurucu (constructor) method çalıştı");
  }

  //NOT: BİR CLASS TA 1 DEN FAZLA İSİMLENDİRİLMEMİŞ KURUCU METHOD KULLANILAMAZ


  // İSİMLENDİRİLMİŞ CONSTRUCTOR KULLANIMI

  Araba.markasizConstructor(this.modelYili,this.otomatikMi){
    print("Model : $modelYili, otomatik mi: $otomatikMi");
  }
}
