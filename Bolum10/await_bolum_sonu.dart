/**
 * SORU
 * Bir fonksiyon yazın bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuçlanacaktır ve getirilen kişi bilgisi map olarak alınacaktır Bu map yapısında username ve id bilgisi olması yeterlidir.
 * 
 * Getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazınız. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde  kursun adları olan bir liste olarak döndürülecektir. 
 * 
 * Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazınız Bu fonksiyon 1 saniye sürecektir.
 * 
 */

main(List<String> args) {
  islemler();
}

void islemler() async {
  Map<String,dynamic> sonuc = await kisiBilgisi(4);
  print(sonuc);
  List<String> kursListe = await kursListesiGetir(sonuc["user_name"]);
  print(kursListe);
  String yorum = await kursYorumu(kursListe[0]);
  print(yorum);
}

Future<Map<String, dynamic>> kisiBilgisi(int id) {
  Map<String, dynamic> kisiListesi = {};
  kisiListesi["id"] = id;
  kisiListesi["user_name"] = "admin";

  print("$id'li kullanıcı");

  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return kisiListesi;
  });
}

Future<List<String>> kursListesiGetir(String userName) {
  print("$userName kullanıcısının kursları");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["Dart", "flutter"];
  });
}

Future<String> kursYorumu(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Dart kursu çok başarılı";
  });
}
