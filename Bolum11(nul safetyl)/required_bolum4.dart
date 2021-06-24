/**
 * Dartttaki isimlendirilmiş parametreler varsayılan olarak opsiyoneldir, tanımlanması kullanıcıya bağlıdır. Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki bu kabul edilemez. Bu yüzden parametrelerin veri tiplerinitanımlarken String?, int? gibi nulable tiplerle belirtilir.
 * 
 * Bunun dışında tüm parametrelere varsayılan degerler atanarak da sorun olmaz çözülebilir
 * 
 * Son çözüm ise required kullanarak bu parametrelerin mutlaka girilmesi sağlanır.
 */

main(List<String> args) {
  final toplam1=ucSayiyiTopla(a: 3, b: 4, c: 5);
}

int ucSayiyiTopla({required int a,required int b,required int c}){
  return a+b+c;
}