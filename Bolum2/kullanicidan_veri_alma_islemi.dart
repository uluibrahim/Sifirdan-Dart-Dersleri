import 'dart:io';

main(List<String> args) {
  print("Adınızı giriniz.");

  String? name = stdin.readLineSync(); // null safety var

  print("Girilen isim $name \n");

  print("Yaşınızı giriniz.");
  int? yas = int.parse(stdin
      .readLineSync()!); // sondaki ünlem işareti null gelmeyeceğini ifade eder.

  print(yas);
}
