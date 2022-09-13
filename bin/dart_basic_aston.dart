import 'dart:convert';

void main(List<String> arguments) {
  print('Hello world PT Aston');
  String name = 'Contoh variable';
  print('length is: ${name.length + 20 - 2 * 5}');
  print('length is: ${name}');
  if (name.isNotEmpty) {
    print('name is not empty');
  }

  if (name.isNotEmpty) {
    if (name == 'saya') {
      name.contains('variable');
      name.split(':');
      name.toUpperCase();
    }
  }
  String firstName = 'Saiful';
  String lastName = 'Bahri';
  String fullName = '$firstName $lastName';
  String fullName2 = '$firstName $lastName';
  print(fullName);
  print(fullName2);

  dynamic myVar = 'yes';
  // myVar =2;
  myVar = '';
  myVar = 1;
  int myInt = 10;
  double myDouble = 10.0;

  myInt = 11;
  // myInt = 11.2;

  bool isEnable = true;
  isEnable = false;

  dynamic myDynamic = 'halo';
  myDynamic = 12;
  myDynamic = true;

  Object myObject = 'String';
  myObject = 12;

  myDouble = 10;

  const num myNum = 10;
  // myNum = 11.2;
}

Data myData = Data(
  id: 1,
  name: 'bahri',
  address: 'jepara',
);

class Data {
  final int? id;
  final String? name;
  final String address;
  const Data({
    required this.id,
    required this.name,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      address: map['address'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));
}
