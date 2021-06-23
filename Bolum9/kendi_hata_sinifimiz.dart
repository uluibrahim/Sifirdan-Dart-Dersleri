main(List<String> args) {
  try {
    Ogrenci o = Ogrenci(-5);
    print(o.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  }finally{
    print("Program bitti");
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas1) {
    if (yas1 < 0) {
      throw AgeException(mesaj: "AgeException - Yaş negatif olamaz");
    } else {
      this.yas = yas1;
    }
  }
}

class AgeException implements Exception {
  String mesaj;
  AgeException({this.mesaj: "Age Exception"});

  @override
  String toString() {
    return "Hatanın tostring metodu çalıştı";
  }
}
