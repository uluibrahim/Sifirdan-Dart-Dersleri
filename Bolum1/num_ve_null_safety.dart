main(List<String> args) {
  num since=2021;

  // Dartın yeni versionu ile birlikte artık hiçbir değişkenin null kalmamsı, mutlaka değer atanması gerekmektedir.
  // Eğer null tanımlmak istenirse veri tipinin sonuna bitişik olarak ? konmalıdır.
  //Aksi halde değişken kullanıldığında program hata verecektir.

  int age;
  //print(age);
  // age değişkenine deger atamamamız nedeni ile kullanmak şstediğimizde hata aldık

  // null tanımlamak istersek.
  int? age2;
  print(age2.toString()); // hiçbir hata almadık.

  // ancak değişkende işlem yapmaya çalışırsak hata alırız.
  //print(age2+4); // hata

  // int değişkenlerine 16 tabanında sayı atayabilirz. Genellikle renk kodlarında kullanılır.

  int hexadecimalSayi= 0xAABBCC;

  print(hexadecimalSayi);
}