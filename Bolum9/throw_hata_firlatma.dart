import 'dart:math';

main(List<String> args) {
  try {
    double deger = kareKokunuAl(-5);
    print("Deger ${deger.toStringAsFixed(3)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }

  /**
   * toStringAsFixed(2)
   * burada " , " den sonra kaç basamak istendiği belirtilir
   */
}

double kareKokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Sayı negatif olamaz");
    // hata fırlatma alanı
  } else {
    return sqrt(i); // sqrt fonksiyonu verilen parametrenin kare kökünü alır
  }
}
