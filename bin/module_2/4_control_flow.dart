void main(List<String> args) {
  final myInteger = 5;
  if (myInteger == 10) {
    print('it\'s ten');
  } else if (myInteger == 9) {
    print('its nine');
  } else if (myInteger <= 20) {
    print('Greater than twenty');
  } else {
    print('oh, it is something else');
  }

  switch (myInteger) {
    case 10:
      print('its ten');
      break;
    case 9:
      print('its nine');
      break;
    default:
      print('default');
      break;
  }
}
