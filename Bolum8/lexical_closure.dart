/**
 * 
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz
 * 
 */

//lexical veriable scope
// alt fonksiyonun üst fonksiyona erişmesi
main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;
    void b() {
      var bDegiskeni = 3;
      print(mainDegiskeni);
    }

    b();
  }

  Function func = topla(5); // burada topla() fonksiyonunun döndürdüğü fonksiyon func değişkenine atanmış oldu

  print(func(45));
}

// fonksiyon döndüren fonksiyon
Function topla(int eleman) {
  return (int deger) => deger + eleman;
}
