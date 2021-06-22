/**
 * 
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * 
 * Abstract sınıflardan nesne üretilmez, abstract sınıflarda normal ve astract fonksiyonlar olur.
 * Abstract fonksiyonlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta eğer abstract fonksiyon varsa o sınıf mutlaka astract olmalıdır
 */

main(List<String> args) {
  Kare kare1 = Kare(5);
  print(kare1.alanHesapla());

  Sekil dikdortgen1 = Dikdortgen(8, 7);

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgenler = [];

  List<Sekil> tumSekiller = [];

  tumSekiller.add(kare1);
  tumSekiller.add(dikdortgen1);

  test(kare1);
  test(dikdortgen1);
}

test(Sekil sekil) => sekil.deneme();

abstract class Sekil {
  // abstract metot tanımı ( body yani içerisi boş)
  double alanHesapla();
  double cevreHesapla();

  // soyut metotlar olabileceği gibi normal metotlarda kullanılabilir
  void deneme() => print("Ben sekil sınıfındanım");
}

class Kare extends Sekil {
  double kenar;
  Kare(this.kenar);
  // parent olan sınıf abstract bir sınıf ise, abstract sınıftaki abstract metotların override edilmesi mecburidir.
  @override
  double alanHesapla() => kenar * kenar;

  @override
  double cevreHesapla() => kenar * 4;

  @override
  void deneme() => print("Ben Kare sınıfındanım");
}

class Dikdortgen extends Sekil {
  double en;
  double boy;
  Dikdortgen(this.boy, this.en);
  @override
  double alanHesapla() => en * boy;

  @override
  double cevreHesapla() => (en + boy) * 2;

  @override
  void deneme() => print("Ben Dikdortgen sınıfındanım");
}
