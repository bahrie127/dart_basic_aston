void main(List<String> args) {
  String returnStringNested() {
    return 'hello Nested';
  }

  cumaPrintAja('lalala');

  returnStringNested();
  _returnString();
  print(_returnString());

  int plusFive(int x){
    return x+5;
  }

  final twiceFive = twice((x){
    return x+ 5;
  });

final twiceFive2 = twice((x) => x+5);
  final twicePlusFive = twice(plusFive);

  final result = twicePlusFive(3);

  print(result);

  print((plusFive(3)));
}

String _returnString() {
  return 'hello';
}

int penambahan(int a, int b){
  return a+b;
}

void cumaPrintAja(String value){
  print(value);
}

void otherFunction() {
  _returnString();
  // returnStringNested(); error
}

void positionalParams(int x, int y, String greeting) {
  positionalParams(4, 5, 'Helloo');
}

void optionalPositionParams(int x, double y, [String? greeting]) {
  optionalPositionParams(2, 3.3);
  optionalPositionParams(3, 3.4, 'hhhoooo');
}

void namedOptionalParams(
  String name,
  {
  required int x,
  double? y,
  String greeting = 'Hiii...',
}) {
  namedOptionalParams(
    'bahri',
    x: 2,
  );

  namedOptionalParams(
    'bahri',
    x: 2,
    y: null,
  );

  namedOptionalParams(
    'bahri',
    x: 4,
    y: 3.3,
    greeting: 'hallo',
  );

  
}

int Function(int) twice(int Function(int) f){
    return (int x) {
      return f(f(x));
    };
  }
