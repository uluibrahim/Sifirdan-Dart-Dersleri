/**
 * 
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesiyle şnterfacemiş gibi kullanabiliriz
 * 
 * Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında  toplayabiliriz.  
 * 
 * Interface olarak kullanılan sınıflarınmethodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır 
 * 
 * 
 * Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım sağlanabilir Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.  
 * 
 * 
 * Bir sınıf başka bir sınıfatan implemente ediliyorsa, implemente edildiği sınıfın tüm metotlarını kullanmak zorundadır.
 */

main(List<String> args) {}

abstract class Hayvan {}

abstract class Kosabilenler {
  run();
}

abstract class Ucabilenler {
  fly();
  test() => print("Test");
}

abstract class Havlayabilenler {
  bark();
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  fly() {}

  // Bir sınıf başka bir sınıfatan implemente ediliyorsa, implemente edildiği sınıfın tüm metotlarını kullanmak zorundadır.
  @override
  test() {
    print("Test edildi");
  }
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  bark() {}

  @override
  run() {}
}

class Insan implements Kosabilenler {
  @override
  run() {}
}
