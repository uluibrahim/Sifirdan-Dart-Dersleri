/**
 * Eğer nulable tipinin null oolmadığından eminseniz, null sertion operator yani ! kullanılabilir böylece dart o değişkene non-nullable olarak davranır ve sıkıntı çıkmaz
 * 
 * Bu işareti kullanınca şunu demiş olursunuz: değer null olmayacak bu yüzden bu degeri non-nullable bir değişkene atabilirsiniz. 
 * 
 * Eğer bu düşüncenizde hatalıysanız dart run-time da hata fırlatır.
 * Böylece programımız null hatalarına açılmış olur bu yüzden yüzde yüz kodun null olmaycağından emin değilseniz ! kullanmayın.
 * 
 * Dart aynı scope da ise  o değişken nullable bile olsa null olup olmadığını anlayabilir. Farklı scope da yani kapsamda ise emin olamaz.
 */

main(List<String> args) {
  int? nullOlabilirAmaDegil = 1;

  List<int?> nullDegerTutanListe = [3, null];

  // NOT: Null olan veya null deger taşıyan değişkenler null olmayan değişkenlere atanamaz. Ancak null olmayacağından emin iseniz ! konularak problem çözülebilir.

  int a =
      nullOlabilirAmaDegil; // aynı scope ta olduğu için kızararak hata vermez, çinkü dart bunun null olmadığını algılayabilmekte,
  // fakat ayrı bir scope ta ise algılayamaz ve hata verir bu nedenle ayrı bir scope ta ise  ! kullanılmalı

  int b = nullDegerTutanListe.first!;

  int c = nullDondurebilirAmaDondurmeyecek()!.abs();
// abs() fonksiyonu mutlak deger bulmak için kullanılır
}

int? nullDondurebilirAmaDondurmeyecek() => 5 - 8;
