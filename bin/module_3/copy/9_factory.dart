void main(List<String> args) {
  
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