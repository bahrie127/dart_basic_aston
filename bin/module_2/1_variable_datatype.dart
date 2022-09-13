void main(List<String> args) {
  String myString = 'Hello world';
  print(myString);
  print(myString.contains('Hello'));

  int myInteger = 5;
  int _myPrivate = 10;
  int  myPrivate = _myPrivate;
  print(myInteger);
  print(myInteger.isEven);
  double myDouble = 5.5;

  num myNumber = 6.5;

  bool myBool = true;

  dynamic mySomething = null;

  mySomething = 'something';
  mySomething = false;
}