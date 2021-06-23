/**
 * Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır. 
 * Sürekli kullanılan koleksiyon yapıları (list, map, set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mısınız?
 * 
 * Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur, compile time da hatalı veri girişi tespit edilir ve bize hatamız bildirilir. 
 * Böylece run-time da çıkacak hataların önüne geçilir.
 * 
 * Generic tipler <> içinde belirtilir List<String> ifadesi bu listede sadece string ifadelrin olacağını belirtir. Bu listeye string dışında veri girilince daha program çalışmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz. 
 * 
 * Generic ler dartta bulunan çoğu yapıda zaten vardır List map set Future Stream ....
 * 
 * Kendi oluşturduğunuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz Böylece hem daha güvenli kod yazmış hem de benzer amaçları gerçekleştiren kod yağılarını tek bir yapıda toplayabilirsiniz.
 * 
 */


main(List<String> args) {
  List<String> liste=[]; // <String> yazarak bu listede sadece string veri tiplerinin olacağını belirtmiş olduk

  // BAZI TERİMLER
  /**
   * List<E> => ELEMENT
   * Map<K,V> => Key , Value
   * R => Metotların return tipleri
   * 
   * Ogrenci<T extends Insan> => Insan sınıfından türetilmiş bir tip almalı anlamında kullanılır
   * 
   * 
   */
}