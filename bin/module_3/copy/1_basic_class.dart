void main(List<String> args) {
  // String myLiteral = 'string here';

  // [1, 2, 3];

  // User myUser = User('a', 'b');
  // final myUser2 = User('c', 'd');
  // myUser2.name = 'saiful';
  // final myUser3 = User('cahyo', 'adi');
  // print(myUser.youtubeChannel);

  final user1 = User(
    name: 'bahri',
    youtubeChannel: 'code with bahri',
  );

  final user2 = const User(
    name: 'bahri',
    youtubeChannel: 'code with bahri',
  );

  final testUser2 = User2(1, private: 'private');
  final testUser21 = User2(1, private: 'private 2');
  print(testUser2 == testUser21);
  testUser2.setEmail('lala@gmail.com');
  testUser2.email = 'oke@gmail.com';
  testUser2.getPrivate();
  testUser2.private;

  // print(user1 == user2);

  final admin = Admin(
    specialAdminField: 123,
    firstName: 'saiful',
    lastName: 'bahri',
  );

  final user = admin as User3;
  print(user.fullName);

  final newAdmin = User3.admin(true);
}

class User {
  final String name;
  final String youtubeChannel;
  const User({
    required this.name,
    required this.youtubeChannel,
  });

  bool hasLongName() {
    return name.length > 10;
  }

  static void myMethod() {}

  static const minNameLength = 3;
}

class User2 {
  String? name;
  String? youtubeChannel;
  int? id;
  String? _private;
  String? _email;
  User2(
    int this.id, {
    this.name,
    this.youtubeChannel,
    required String private,
  }) : _private = private;

  String? get private => _private;
  String? getPrivate() => _private;

  void setEmail(String value) {
    _email = value;
  }

  set email(String value) {
    _email = value;
  }

  void signOut() {
    print('sign out');
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User2 &&
        other.name == name &&
        other.youtubeChannel == youtubeChannel &&
        other.id == id &&
        other._private == _private &&
        other._email == _email;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        youtubeChannel.hashCode ^
        id.hashCode ^
        _private.hashCode ^
        _email.hashCode;
  }
}

class Admin extends User3 {
  final double specialAdminField;

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
}

class User3 {
  final String _firstName;
  final String _lastName;
  const User3(
    this._firstName,
    this._lastName,
  );

  factory User3.admin(bool admin) {
    // return 'hehehe';
    return admin
        ? Admin(
            specialAdminField: 1111,
            firstName: 'admin',
            lastName: 'gudang',
          )
        : User3(
            'user',
            'biasa',
          );
  }

  String get fullName => '$_firstName $_lastName';

  void signOut() {
    print('sign out');
  }
}
