main(List<String> args) {
  Veritabani db1 = OracleDB();
  Veritabani db2 = FirebaseDB();

  userGuncelle(db1);
  userGuncelle(db2);
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() => print("firebase db de ki user güncellendi");

  @override
  void userSave() => print("firebase db de ki user güncellendi");

  @override
  void userUpdate() => print("firebase db de ki user güncellendi");
}

void userGuncelle(Veritabani db) => db.userUpdate();

abstract class Veritabani {
  void userSave();
  void userDelete();
  void userUpdate();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() => print("Oracle db de ki user güncellendi");

  @override
  void userSave() => print("Oracle db de ki user güncellendi");

  @override
  void userUpdate() => print("Oracle db de ki user güncellendi");
}
