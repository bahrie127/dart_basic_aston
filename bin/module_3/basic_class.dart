import 'dart:convert';

void main(List<String> args) {
  // User user1 = User(
  //   nama: 'bahri',
  //   nomortelp: '23432432',
  //   alamat: 'jepara',
  // );

  // User user3 = User(
  //   nama: 'bahri saiful bahri',
  //   nomortelp: '23432432',
  //   alamat: 'jepara',
  // );

  // print(user3.hasLongName());

  // User user2 = user1.copyWith(
  //   nomortelp: '111222111',
  // );

  // print(user1 == user3);
  // print(user2);

  User user3 = User(
      nama: 'bahri saiful bahri',
      nomortelp: '23432432',
      alamat: 'jepara',
      email: 'bahri@gmail.com');

  print(user3.getEmail());
  print(user3.nomortelp);
  print(user3.email);
  user3.setEmail('halo@bahri.com');
  user3.email = 'hallooo@bahri.com';
  User.myMethod(true);

  Admin myAdmin = Admin(
    3,
    nama: 'zainudin',
    alamat: 'kudus',
    noTelp: '2343243',
    email: 'kudus@gmail.com',
  );

  print(myAdmin.name);
}

class User {
  final String nama;
  final String alamat;
  final String nomortelp;
  late String _email;
  User({
    required this.nama,
    required this.alamat,
    required this.nomortelp,
    required String email,
  }) {
    _email = email;
  }

  factory User.admin(bool admin) {
    // return 'hehehe';
    return admin
        ? Admin(
            3,
            nama: 'zainudin',
            alamat: 'kudus',
            noTelp: '2343243',
            email: 'kudus@gmail.com',
          )
        : User(
            nama: 'bahri saiful bahri',
            nomortelp: '23432432',
            alamat: 'jepara',
            email: 'bahri@gmail.com',
          );
  }

  String get email => _email;

  String getEmail() => _email;

  void setEmail(String mail) => _email = mail;

  set email(String mail) => _email = mail;

  bool hasLongName() => nama.length > 10;

  static void myMethod(bool isAdmin) {
    if (isAdmin) {
      print('your are admin');
    } else {
      print('your just a member');
    }
  }

  static const minNameLenght = 3;

  @override
  String toString() =>
      'User(nama: $nama, alamat: $alamat, nomortelp: $nomortelp)';

  // User copyWith({
  //   String? nama,
  //   String? alamat,
  //   String? nomortelp,
  // }) {
  //   return User(
  //     nama: nama ?? this.nama,
  //     alamat: alamat ?? this.alamat,
  //     nomortelp: nomortelp ?? this.nomortelp,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'nama': nama,
  //     'alamat': alamat,
  //     'nomortelp': nomortelp,
  //   };
  // }

  // factory User.fromMap(Map<String, dynamic> map) {
  //   return User(
  //     nama: map['nama'] ?? '', // map['nama'] == null ? '' : map['nama'],
  //     alamat: map['alamat'] ?? '',
  //     nomortelp: map['nomortelp'] ?? '',
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.nama == nama &&
        other.alamat == alamat &&
        other.nomortelp == nomortelp;
  }

  @override
  int get hashCode => nama.hashCode ^ alamat.hashCode ^ nomortelp.hashCode;
}

class Admin extends User {
  final int adminAccess;

  Admin(
    this.adminAccess, {
    required String nama,
    required String alamat,
    required String noTelp,
    required String email,
  }) : super(
          nama: nama,
          alamat: alamat,
          nomortelp: noTelp,
          email: email,
        );

  String get name => 'Admin name: ${super.nama}';

  // Admin({
  //   required this.specialAdminField,
  //   required String nama,
  //   required String alamat,
  // });

}
