main(List<String> args) {
  // if else kullanımı, karşılaştırmalarda ve şartlandırmalarda kullanılır.

  int num1 = 5;
  num num2 = 4;

  if (num1 > num2) {
    // num1 sayısı num2 sayısından büyükse buradaki kod buloğu çalışır.
    print("$num1 sayısı $num2 sayısından büyüktür.");
  } else {
    // üstteki şart sağlanmaz ise çalışacak kod bloğu.
    // num2 sayısı num1 sayısından büyükse buradaki kod buloğu çalışır.
    print("$num1 sayısı $num2 sayısından büyüktür.");
  }

  // yukarıda kullanımda sadece iki şartla ilgilendeik. 3 farklı seçenek vardı. bu gibi durumlarda aşağıdaki yapı kullanılır.

  if (num1 > num2) {
    print("$num1 sayısı $num2 sayısından büyüktür.");
  } else if (num1 < num2) {
    print("$num1 sayısı $num2 sayısından büyüktür.");
  } else {
    print("$num1 sayısı $num2 sayısına eşittir.");
  }

  // İÇ İÇE İF ELSE KULLANIMI

  int not = 90;
  if (not >= 90 && not <= 100) {
    print("Harf notunuz A1.");
  } else if (not >= 80 && not < 90) {
    print("Harf notunuz A2.");
  } else if (not >= 70 && not < 80) {
    print("Harf notunuz B1.");
  } else if (not >= 60 && not < 70) {
    print("Harf notunuz B2.");
  } else if (not >= 50 && not < 60) {
    print("Harf notunuz C1.");
  } else if (not >= 40 && not < 50) {
    print("Harf notunuz C2.");
  } else if (not >= 0 && not < 40) {
    print("Dersten kaldınız");
  } else {
    print("Hatalı deger girdiniz.");
  }
}
