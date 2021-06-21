import 'dart:io';
import 'dart:math';

class VeriTabaniIslemleri {
  // değişken ve method isimlerinin başına alt çizgi konulduğunda private olur
  // private olması dışardan erişilemez olduğu anlamına gelmektedir.
  // bu sayede daha güvenli olmuş olur
  // bunun geçerli olabilmesi clasın farklı dosyada olması gerekmektedir

  String _kullaniciAdi = "Halil";
  String _sifre = "123456";

  VeriTabaniIslemleri();

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "Halil" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }

  VeriTabaniIslemleri.loginwithNameAndPassword() {
    print("Kullanıcı Adı:");
    this._kullaniciAdi = stdin.readLineSync()!;
    print("Şifre:");
    this._sifre = stdin.readLineSync()!;
  }
}
