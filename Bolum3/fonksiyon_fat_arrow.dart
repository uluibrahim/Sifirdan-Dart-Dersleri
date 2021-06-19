main(List<String> args) {
  int toplam = topla(4, 5);
  int toplam2 = topla2(3, 90);

  print("Sayıların toplamı: ${topla2(5, 4)}");

  print(maxSayi(4, 5));
}

int topla(int a, int b) {
  return a + b;
}

// topla fonksiyonunu fat arrow yöntemi ile gösterelim.
// fat arrow daha temiz kod ve daha okunaklı kod sunar.
// genellikle tek satırlık işlemlerde kullanılır.
int topla2(int a, int b) => a + b;

// fat arrow olmadan
int maxOlaniBul(int a, int b) {
  int buyukSayi;
  if (a > b) {
    buyukSayi = a;
  } else {
    buyukSayi = b;
  }
  return buyukSayi;
}

// fat arrow kullanarak
// aşağıdaki kullanım sayesinde  onca satır kod yazmaktan kurtulmuş olduk ve kod okunurluğunu yükseltmiş olduk.
// => (fat arrow) işaretinden sonraki kısım kısa if kullanımıdır.
int maxSayi(int a, int b) => a > b ? a : b;
