main(List<String> args) {
  //List<int> sayilar=List.filled(length, fill)
  // length kısmına kaç boyutlu olcağı yazılır, fill kısmına ise varsayılan olarak doldurulacak eleman değeri girilir.
  List<int> sayilar = List.filled(5, 1);

  // listeye elemanına değer atamak
  sayilar[0] = 3;
  sayilar[1] = 7;
  sayilar[2] = 6;
  sayilar[3] = 4;
  sayilar[4] = 8;

  print(sayilar); // listenin yazdırılması
  print(sayilar.length); // liste uzunluğunu bulmak
  print(sayilar[2]); // iliste içindeki tek bir elemanı yazdırmak

  List<String> isimler = List.filled(2, "");

  isimler[0] = 414.toString();
  isimler[1] = "halil";

  print(isimler);

  // Listenin alacağı veri tipi belirtilmez ise, int string ve diğer veri tiplerimi tek listene oluşturabiliriz.
  // liste tipi dynamic olur

//   List<dynamic> herTip = List.filled(5, 8);
  List herTip = List.filled(5, 8);

  herTip[0] = "Halil";
  herTip[1] = 8;
  herTip[2] = true;

  print(herTip);

  // liste elemanlarını gezmek ve değiştirebilmek

  for (var i = 0; i < herTip.length; i++) {
    // değiştirmek
    if (i > 2) {
      herTip[i] = 10;
    }
    // kullanmak
    print(herTip[i]);
  }

  for (var item in herTip) {
    print(item);
  }
}
