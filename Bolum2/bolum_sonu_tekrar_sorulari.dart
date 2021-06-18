/**
 * question1: 3 tane double değişken oluşturup bunların ortalamasını yazdırınız.
 * 
 * Question2: Kenarlarını girdiğiniz üçgenin çeşidi yazdıran programı yazınız.
 * 
 * Question3: Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu 50 ,vize %40 final %60 )
 * 
 * Question4: kendi adınızı ekrana yazdıran  uygulamayı tüm döngü ifadeleriyle yazınız
 * 
 * Question5: 1 den 100 e kadar olan ve 15 e tam bölünen sayıların karelerini ekrana yazdırınız
 * 
 * Question6: Tanımlanan int bir sayının faktöriyelini bulan uygulamayı yazınız.
 */

main(List<String> args) {
  // QUESTION 1
  double a = 10, b = 20, c = 48;
  print("Ortalama: ${(a + b + c) / 3}");

  print("\n\n");
  // QUESTION 2

  double k1 = 3, k2 = 4, k3 = 5;

  if ((k1 == k2) && (k1 == k3)) {
    print("Eşkenar üçgen");
  } else if ((k1 == k2) || (k1 == k3) || (k2 == k3)) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }

  print("\n\n");

  // QUESTION 3

  double vizeNotu = 74;
  double finalNotu = 82;

  double not = (vizeNotu * 0.4) + (finalNotu * 0.6);

  if (not >= 50) {
    print("Dersi geçtiniz. Notunuz: $not");
  } else {
    print("Dersten kaldınız. Notunuz: $not");
  }

  print("\n\n");

  // QUESTION 4

  String name = "Halil";

  for (var i = 0; i < 2; i++) {
    print(name);
  }
  print("\n");
  int counter = 0;
  while (counter < 2) {
    print(name);
    counter++;
  }
  print("\n");
  int counter2 = 0;
  do {
    print(name);
    counter2++;
  } while (counter2 < 2);
  print("\n");

  print("\n\n");

  // QUESTION 5

  for (var i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print(i * i);
    }
  }
  print("\n\n");

  // QUESTION 6

  int faktoriyer = 5;
  int result = 1;

  for (var i = 1; i <= faktoriyer; i++) {
    result *= i;
  }
  print(result);
}
