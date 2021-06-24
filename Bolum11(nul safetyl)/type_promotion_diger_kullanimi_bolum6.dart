/**
 * Dart dili, eğer aynı scope içinde null check yapılırsa nullable değişkenlere non-nullable gibi davranır.
 * 
 * 
 * Farklı bir yontem hata fırlatmak olabilir. Eğer değer null ise hata fırlatırsak return ifadesi çalışmayacak ve fonksiyonumuz null deger döndürmeycek.
 * 
 * 
 * 
 */

int karakterSayisiniBul(String? metin) {
  if (metin == null) {
    throw Exception("metin null olamaz");
  }
  return metin.length;
}

main(List<String> args) {
  try {
    print(karakterSayisiniBul(null));
  } catch (e) {
    print(e);
  }
}
