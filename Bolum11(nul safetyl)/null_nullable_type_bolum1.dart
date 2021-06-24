/**
 * 
 * Dart varsayılan olarak hiç bir değişkene null deger atanmasına izin vermez . Buna dart non-nullable tip denir. Bir değişken tanımlayıp uygun veriyi atamazsınız size bir uyarı verecektir. Bu uyarıda değişkene ilk degeri atamanız istenecektir.  Böylece program çalışırken hiçbir non-nullable bir değişken null degeri göstermez (null-sound)
 * 
 * 
 * Bunu istemiyorsanız veri tipinin sonuna ? konulmalıdır. Böylece değişkende null deger saklanabilir. Bunlarda aslında yeni bir veri tipidir. ? koyarak  Nullable type oluşturmuş olursunuz.
 */

main(List<String> args) {
  //nullable
  int? a;
  a=null;
  //print(a+2); // null ile int toplanamadığından hata alınır

  
}