main(List<String> args) {
  // aşağıda görüldüğü gibi zorunlu olan ilk parametre verildikten sonra diğerleri isteğe bağlı gönderildi veya gönderilmedi.
  // burada  dikkat edilmesi geereken husus köşeli parantez kullanılmışsa, sırrasıyla deger atanmalı.
  cikar(4);
  cikar(5, 4);
  cikar(6, 5, 7);

  // optional named kullanımı.
  // burada hangi değişkene değer gönderilecekse  o değişkenin ismiyle gönderilmeli.
  carp(6,a: 3, c: 3, b: 7);
  carp(8,b: 3, a: 3, c: 7);
}

// şimdiye kadar gördüğümüz fonksiyonlar parametre almak zorunda idi
// required (zorunlu) parametreli fonksiyon

int topla(int a, int b) {
  return a + b;
}

// optional
// köşeli parantez içinde yazılan değişkenle optional olur .
// bu durumda istenir ise değişkenlere değer atanır istenmez ise atanmaz.
// köşeli parantez içinde tanımlanan değişkenlere deafult (varsayılan) deger atanması zorunludur.
int cikar(int a, [int b = 0, int c = 0]) {
  return a - b - c;
}

// optional named (isimlendirilmiş)
// süslü parantezler içinde tanımlanan değişkenlerede default değer atanır.
int carp(int d,{int a = 1, int b = 1, int c = 1}) {
  return a * b * c;
}
