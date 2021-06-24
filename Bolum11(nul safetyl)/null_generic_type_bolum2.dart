/**
 * 
 * Generic tipleri belirtirken de nullable ve non-nullable kullanılabilir.
 * Burada önemli olan ? nereye koyacağınız.
 * 
 * Liste null olabilir diyorsak List<String>?, listenin bazı elemanları null olabilir diyorsak List<String?> diye belirtiriz.
 */

main(List<String> args) {
 List<String> stringListe=["halil", "hasan","ali"]; 
 List<String>? nullOlabilenStringListe;
 List<String?> nullOlabilenStringleriTutanListe=["o","bu",null,"şu"];

 print("string değerler tutan liste $stringListe");
  print("null olabilen string liste $nullOlabilenStringListe");
   print("null olabilen string degerler tutan liste $nullOlabilenStringleriTutanListe");

}