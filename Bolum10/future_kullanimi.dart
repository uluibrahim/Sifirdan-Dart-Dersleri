import 'dart:io';

main(List<String> args) {
  print("Anne çocuğu ekmek  almaya yollar");
  print("Cocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();

  sonuc
      .then((value) => print(value))
      .catchError((onError) => print(onError))
      .whenComplete(() {
    // hata olsada olmasada çalışacak kısım
    print("Ekmek alma işlemi bitti");
  });

  // işlem tamamlandıktan sonra çalışmasını sağlayan yapı
  print("Anne kahvaltı hazırlar");
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    //return "Çocuk ekmek aldı";
    throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}
