void main(List<String> args) {
  Admin admin = Admin(
    specialAdminField: 1,
    firstName: 'saiful',
    lastName: 'bahri',
  );

  DbOracle ocr = DbOracle();
  ocr.connectServer();

  Database mysql = DbMySql();
}

class Admin extends User3 {
  final double specialAdminField;

  bool _isLogin = false;

  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);

  @override
  String get fullName => 'Admin: ${super.fullName}';

  @override
  void signOut() {
    print('admin specifc sign out');
    super.signOut();
  }

  @override
  bool get isLogin => _isLogin;

  @override
  void login() {
    _isLogin = true;
  }
}

abstract class User3 {
  final String _firstName;
  final String _lastName;
  const User3(
    this._firstName,
    this._lastName,
  );

  String get fullName => '$_firstName $_lastName';

  void signOut() {
    print('sign out');
  }

  void login();

  void login2() {}

  bool get isLogin;
}

abstract class Database {
  void connectServer() {
    print('connect server');
  }

  String getData();
}

class DbMySql implements Database {
  @override
  String getData() {
    return 'ini get data khusus untuk mysql';
  }
  
  @override
  void connectServer() {
    print('wajib ditulis ulang');
  }
}

class DbOracle extends Database {
  @override
  String getData() {
    return 'ini get data khusus untuk oracle';
  }

  // @override
  // void connectServer() {
  //   print('ini log sebelum masuk ke server oracle');
  //   super.connectServer();
  // }

}

abstract class Pickup {
  String? namaMuatan;
  Pickup(this.namaMuatan);

  String get supir;
  set tambahMuatan(String tambahan);
}

class AngkutanBuah extends Pickup {
  AngkutanBuah(super.namaMuatan);

  @override
  set tambahMuatan(String muatan) {
    namaMuatan = '$namaMuatan $muatan';
  }

  @override
  String get supir => 'jono';
}
