/**
 *  Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.
 *  if, else , switch gibi kontrol ifadelerinin olduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.
 * 
 * Method overriding: üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 * 
 */

main(List<String> args) {
  // user
  User user1 = User();
  user1.email;
  user1.password;
  user1.girisYap();

  // noral user
  NormalUser user2 = NormalUser();
  user2.email;
  user2.password;
  user2.girisYap();
  user2.davetEt();

  // Sadece Okuyabilen User
  SadeceOkuyabilenUser user3 = SadeceOkuyabilenUser();

  user3.email;
  user3.password;
  user3.girisYap();
  user3.davetEt();
  user3.oku();
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("User Girişi yapıldı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user davet etti");
  }
}

class SadeceOkuyabilenUser extends NormalUser {
  void oku() {
    print("Sadece okuyabilen user");
  }

  // overrride var olan fonksiyonu ezip tekrar oluşturmamıza imkan verir
  @override
  void davetEt() {
    print("Okuyabilen user davet etti");
  }

  @override
  void girisYap() {
    print("Okuyan user Girişi yapıldı");
  }
}

class AdminUser extends User {
  void kullaniciListesi() {
    print("Admşn user kullanıcı listesini görütüledi");
  }

  @override
  void girisYap() {
    print("Admin User Girişi yapıldı");
  }
}
