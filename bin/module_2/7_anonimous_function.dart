import '6_function.dart';

void main(List<String> args) {

  cumaPrintAja('print dari tempat lain');


  // named function
  void pressThreeDBuddy() {
    print('Pressing a 3D Buddy.');
  }
  // calling a function
  pressThreeDBuddy();
  // output: Pressing a 3D Buddy.
  
  // anonymous function
  Function anonymous;
  anonymous = () {
    print('Pressing anonymously.');
  };
  // calling an anonymous function
  anonymous();
  // output: Pressing anonymously.
}

