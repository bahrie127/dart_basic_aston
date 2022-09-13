void main(List<String> args) {
  List<int> myList = [1, 2, 4];

  final list = [true, true, false];

  list[0];

  <String>['aku', 'sehat'];

  final firstElement = myList[0];

  // List<int> myList2 = [1,2,4, 'hello'];

  <int>[1, 2, 3];

  Map<String, dynamic> myMap = {
    'name': 'Budiman',
    'age': 30,
    'registered': true,
  };

  final name = myMap['name'];

  Set<int> mySet = {1, 2, 3, 3, 3};
  print(mySet.length);

  final names = ['budi', 'angga', 'yantimah'];

  final nameLengths = names.map((e) => e.length).toList();
  nameLengths[0];

  final nameFiltered = names.where((e) => e.length == 4).toList();

  print(nameFiltered);

  for (int i = 0; i < nameFiltered.length; i++) {
    print(nameFiltered[i]);
  }

  for (final name in nameFiltered) {
    print(name);
  }

  nameFiltered.forEach((element) {
    print('i');
    print('i');
    print(element);
  });

  nameFiltered.forEach((element) => print(element));

  nameFiltered.forEach((element) => print);

  <String>[
    'this is a fake content',
    if (true) 'sign out' else 'sign in',
  ];

  final list1 = ['hello', 'there'];
  final list2 = ['what', 'up'];

  final result = <String>[
    ...list1,
    ...list2,
  ];

  print(result);
}
