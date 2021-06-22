main(List<String> args) {
  print("Program başladı");

  try {
    int sayi = 100 ~/ int.parse("bug"); // ~ kullanıldığında hatayı gözardı ederek çalışır
  } on IntegerDivisionByZeroException {
    print("Bölen sayı sıfır olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı ${e}");
  } finally {
    // hata olsada olmasada çalışacak kısım
    print("İşlem tamamlandı");
  }

  print("Program bitti");
}
