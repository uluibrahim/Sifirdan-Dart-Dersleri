class CemberDaire {
  double _yaricap = 1;
  double pi = 3.14;
  CemberDaire(double yaricap) {
    _yariCapKontrol = yaricap;
  }

  set _yariCapKontrol(double r) {
    if (r > 0) {
      _yaricap = r;
    } else {
      return print("Hatalı deger girildi");
    }
  }

  double _alanHesapla() => pi * _yaricap * _yaricap;
  double _cevreHesapla() => pi * _yaricap * 2;

  get cevreVeAlanYazdir =>
      print("Cevre: ${_cevreHesapla()}, Alan: ${_alanHesapla()}");
}
