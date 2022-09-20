void main(List<String> args) {
  
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