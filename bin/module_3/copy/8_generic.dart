import '6_abstract.dart';

void main(List<String> args) {
  
}


abstract class DataReader<T> {
  T readData();

}

class StringDataReader implements DataReader<String> {
  @override
  String readData() {
    print('performing logic');
    return 'Yes oke';
  }

}

class AdminDataReader implements DataReader<Admin> {
  @override
  Admin readData() {
    print('performing logic');
    return  Admin(specialAdminField: 2, firstName: 'saiful', lastName: 'bahri');
  }

}

class IntegerDataReader implements DataReader<int> {
  @override
  int readData() {
    // TODO: implement readData
    return 123;
  }

}