class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }
  _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

/**
  String get musteriBilgisi{
    return "Musteri no $_musteriNo";
  }
 */
  String get musteriBilgisi => "Musteri no $_musteriNo";

  void bilgileriYazdir() {
    print("Musteri no: $_musteriNo");
  }
}
