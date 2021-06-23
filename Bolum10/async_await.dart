main(List<String> args)  {
  print("İnternetten veri getirilecek");
  kisiIslemleri();
  print("işlem bitti");
}

void kisiIslemleri() async {
  String sonuc = await kisiVerisiniGetir();
  print(sonuc);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Kişi adı: Emre , id: 1";
  });
}

// NOT: fonksiyon içinde await kullanılmış ise fonksiyonun async tanımlanması zorunludur