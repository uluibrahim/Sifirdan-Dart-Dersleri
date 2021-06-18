main(List<String> args) {
  double num1 = 5;
  double num2 = 4;

  // Aritetik operatörler
  print(
      "$num1 + $num2 sayilarin toplamı : ${num1 + num1}"); // toplama operatörü +
  print(
      "$num1 - $num2 sayilarin çıkarımı : ${num1 + num1}"); // çıkarma operatörü -
  print(
      "$num1 * $num2 sayilarin çarpımı : ${num1 + num1}"); // çarpma operatörü *
  print("$num1 / $num2 sayilarin bölümü : ${num1 + num1}"); // bölme operatörü /
  print(
      "$num1 % $num2 sayilarin modu : ${num1 + num1}"); // mod operatörü %  mod sayıların bölümünden kalandır

  //atama ve karşılaştırma

  double sayi1 = num1;
  sayi1 = sayi1 + num1; // 1. yöntem

  sayi1 += num1; // 2. yöntem

  int sayi = 7;

  if (sayi < 10) {
    // küçükse
    print("Sayi 10 dan küçük");
  } else {
    print("Sayi 10 dan büyük");
  }

  //*********** */
  if (sayi <= 10) {
    // küçük eşitse
    print("Sayi 10 dan küçük veya eşit");
  } else {
    print("Sayi 10 dan büyük");
  }

  int a = 9;
  int b = 8;

  if (a == b) {
    // eşit ise
    print("a ve b aynıdır");
  } else {
    print("a ve b farklıdır");
  }
  if (a != b) {
    // eşit değilse !=
    print("a ve b farklıdır");
  } else {
    print("a ve b aynıdır");
  }
  //NOT: bu operatörler tüm veri tipleri için kullanılabilir.

  // MANTIKASAL OPERATÖRLER.
  // %% (ve), || (veya), ! değil

  bool flutter = true;
  bool react = false;

  print(flutter && react); // her iki koşulda doğru olmalı

  print(flutter || react); // koşullardan birinin sağğlanması durumunda.

  print(!flutter); // değilini alır.

  // Arttırma ve azaltma işlemleri.

  int number1 = 4;
  int number2 = 5;

  number1 = number1 + 1; // 1 arttırır
  number1 += 3; // 3 arttırır

  number1++; // sayıyı  1 arttırır

  print(number2++); // önce kullanılır sonra arttırılır.
  print(number2);

  print(++number2); // önce arttırılır sonra kullanılır.

  // İŞLEM ÖNCELİĞİ

  /*
  ilk önce parantez içi işleme alınır. (5+6) gibi
  sonrasında çarpma ve bölme soldan sağa doğru işleme alınır.
  değişkenden önce gelen arttırma veya azaltma işleme alınır .  // ++sayi1  veya --sayi1 gibi.
  sonrasında toplama ve çıkarma işlemleri alınır.
  */

  // ÖRNEK 1
  int s1 = 10, s2 = 5;
  int sonuc=0;
  sonuc=(s1+s2*3-s2)+s2-s1*5+s1;
  /**
   *  ilk adım parantez içi
   *  (s1+s2*3-s2) işlemi içinde çarpma ve bölmeler yapılır
   *  s2*3=15, sonra toplam ve çıkarma
   *  10+15-5=0
   *
   */
  print(sonuc);

  // örnek 2
  int sonuc2=0;

  sonuc2=s1*s2+5-6*2+(++s2+50);
  print(sonuc2);
}
