/**
 * Bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. Bir değer atadıktan sonra bu değerin sonrada değişmesini istemiyorsak final ve const anahtar kelimeleriyle değişkenlerimizi tanımlarız.
 * 
 * İki kavramın farkı
 * Final: değer atandıktan sonra bellekte yer ayrılması sadece erişilirse olmakta
 * 
 * Const: bu aslında final dir ama derleme anında değer atanır ve bellekte yeri ayrılır , hiç kullanılmasa bile
 * Veri tipide içindeki değerde sonradan değiştirilemez
 * 
 * En önemli farkı ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanmaz
 *  Const ile tanımlanabilmesi için static olması
 */

//IMMUTABLE DEĞİŞTİRİLEMEZ

main(List<String> args) {

  final String str="str";
  const String str2="str2";

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  if (liste == liste2) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }

  // listelerin içerikleri aynı olmasına rağmen eşit olmadıklarını göreceksinşz.
  // bunun sebebi final ın adresi işaret edip adres değerlerini karşılaştırması

  // final ile const arasındaki temel fark çalışma zamanlarıdır.
  // final run time yani programın çalıştığı anda atanır
  // const ise compile time program çalışmadan atanır

  final tarih = DateTime.now();
  // const tarih2=DataTime.now(); // hata verdi çünkü tarih programın çalıştığı anda atanır

  // final tanımlanan listede değişiklik yapılabilir. Burada işaret ettiği adres değişmediğinden problem olmayacaktır

  final liste3 = [1, 2, 3];
  liste3.add(6);
  liste3.remove(1);
  
  // const tanımlanan listede değişiklik  yapılamaz. Burada değişkenşn adresi değil içeriği baz alınır ve karşılaştırma yapılabilir

  //canonicalized
  const liste4=[2,3,6];
  const liste5=[2,3,6];

  if (liste4==liste5) {
    print("Const liste eşit");
  } else {
    print("Const liste eşit değil");
  }
}
