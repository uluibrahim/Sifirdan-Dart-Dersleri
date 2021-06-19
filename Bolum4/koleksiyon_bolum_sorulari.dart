import 'dart:io';
import 'dart:math';

/**
 * SORULAR
 * 1- Sehirleri tutan bir liste oluşturun 4 tane şehir ekleyip sırasıyla ekrana basın.
 *
 * 2- Keyleri String value leri synamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını, ve ssd olup olmadığı bilgisini tutun ve ekrana bastırın.
 *
 * 3- her bir elemanında keyleri string value leri dynamic map olan bir liste oluşturun
 *
 * bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun
 * ör: il ankara  plaka kodu 06 ilçe sayısı 10
 *
 * 4- 5 elemanlı iki farklı liste oluşturun Elemanlar 0-50 ye rastgele şekilde oluşturulsun
 * bu elemanları tek bir listeye aktarın
 * olusan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın
 *
 * 5- Kullanıcıdan aldığınız integer pozitif sayıları bir listeded tutun  kulllanıcı 0 degerini girdiğinde  girilen sayıların ortalamalrın yazsın.
 */

main(List<String> args) {
  // 1- Sehirleri tutan bir liste oluşturun 4 tane şehir ekleyip sırasıyla ekrana basın.

  List<String> sehirler = [];

  sehirler.add("Ankara");
  sehirler.add("Şanlıurfa");
  sehirler.add("Denizli");
  sehirler.add("İzmir");

  for (var item in sehirler) {
    print(item);
  }

  print("\n\n");

  //2- Keyleri String value leri synamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını, ve ssd olup olmadığı bilgisini tutun ve ekrana bastırın.

  Map<String, dynamic> bilgisayar = {
    "cekirdek": 8,
    "ram": 4,
    "ssdVarMi?": true
  };

  for (var item in bilgisayar.entries) {
    print("${item.key} : ${item.value}");
  }
  print("\n\n");

  //3- her bir elemanında keyleri string value leri dynamic map olan bir liste oluşturun
  //bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun
  //ör: il ankara  plaka kodu 06 ilçe sayısı 10

  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];

  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1["il_adi"] = "Ankara";
  eklenecekSehir1["ilce_sayisi"] = 16;
  eklenecekSehir1["plaka_kodu"] = 06;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il_adi"] = "İstanbul";
  eklenecekSehir2["ilce_sayisi"] = 30;
  eklenecekSehir2["plaka_kodu"] = 34;

  var eklenecekSehir3 = <String, dynamic>{};

  eklenecekSehir3["il_adi"] = "Şanlıurfa";
  eklenecekSehir3["ilce_sayisi"] = 13;
  eklenecekSehir3["plaka_kodu"] = 63;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add(
    {
      "il_adi": "Denizli",
      "ilce_sayisi": 10,
      "plaka_kodu": 20,
    },
  );

  for (var i = 0; i < iller.length; i++) {
    var oAnkiSehir = iller[i];

    print(
        "Listenin ${i + 1}. elemanında bulunan sehir adı: ${oAnkiSehir["il_adi"]}, ilçe sayısı: ${oAnkiSehir["ilce_sayisi"]}, plaka kodu: ${oAnkiSehir["plaka_kodu"]}");
  }

  print("\n\n");

  //4- 5 elemanlı iki farklı liste oluşturun Elemanlar 0-50 ye rastgele şekilde oluşturulsun
  // bu elemanları tek bir listeye aktarın
  // olusan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın

  List<int> liste1 = List.filled(5, 0);

  List<int> liste2 = List.filled(5, 0);

  for (var i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  List<int> sonListe = [...liste1, ...liste2];

  for (var item in sonListe) {
    print("$item sayısının karesi: ${item * item}");
  }

  print("\n\n");

  //  5- Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun  kulllanıcı 0 degerini girdiğinde  girilen sayıların ortalamalrın yazsın.

  int result = 1;
  int sayi = 0;
  int toplam = 0;
  double ortalama = 0;
  List<int> pozitifSayilar = [];
  while (result != 0) {
    print("Pozitif sayi giriniz:");
    sayi = int.parse(stdin.readLineSync()!);
    if (sayi != 0) {
      pozitifSayilar.add(sayi);
    } else {
      for (var item in pozitifSayilar) {
        toplam += item;
      }
      result = 0;
    }
  }

  if (pozitifSayilar.length != 0) {
    ortalama = toplam / pozitifSayilar.length;
  }
  print("Ortalama: $ortalama");
}
