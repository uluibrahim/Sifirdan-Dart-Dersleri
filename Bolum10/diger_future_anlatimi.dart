main(List<String> args) async{
  /**
   *  print("Program başladı");
      Future.delayed(Duration(seconds: 0),(){
      print("O saniyelik future");
      });
      print("Program bitti");

      // ÇIKTI
      Program başladı
      Program bitti
      O saniyelik future

      NOT: Future 0 saniyede olsa beklerken altındaki kodlar future dan önce çalışır
   */

  // Future kullanırken duration vermek zorunda değiliz. Burada işlem ne zaman biterse o zaman değeri dödürecektir.

  print("Toplama işlemi sürüyor");
  Future<int> toplam = Future(() {
    int toplam = 0;
    for (var i = 0; i < 1000000000; i++) {
      toplam += i;
    }
    //return toplam;
    throw "Sayılar toplanamadı";
  });

  toplam.then((value) => print(value)).catchError((e) => print(e));
  print("Toplama işlemi bitti");

  // async await için   hata yakalama try ile yapılabilir
  try {
    int forSonuc=await toplam;
    print("****** $forSonuc");
  } catch (e) {
    print(e);
  }

  // mock data  gerçek verilerin similasyonu gibi düşünülebilir

  var valueKullanimi = Future.value("flutter");
  var hata = Future.error("error");
  hata.catchError((value) => print(value));
}
