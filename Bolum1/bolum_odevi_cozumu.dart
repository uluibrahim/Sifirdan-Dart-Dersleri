/**
 * SORULAR
 * 1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana
 * "Benim adım halil ulu, yaşım 23 ve ismimdeki karakkter sayısı : 5 ' tir" yazdırın
 *
 * 2- Bir üçkenin tüm kenarlarını değişkenlere atayarak çevresini hesaplayın ve yazdırın
 */

main(List<String> args) {
  String name = "halil";
  var surname = "ULU";
  int age = 23;

  print("Benim adım $name $surname, yaşım $age ve ismimdeki karakkter sayısı : ${name.length} ' tir");

  double aKenari=5;
  double bKenari=4;
  double cKenari=3;
  print("Kenarları; $aKenari, $bKenari ve $cKenari olan üçkenin çevresi : ${aKenari + bKenari + cKenari} 'dir");
}
