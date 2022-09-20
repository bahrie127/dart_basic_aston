class Tabungan {
  late int _saldo;

  Tabungan(int setoranAwal) {
    _saldo = setoranAwal;
  }

  int get saldo => _saldo;

  set setor(int setor) {
    _saldo += setor;
  }

  set setorTapiDikit(int dikit) {}

  int getSaldo() => _saldo;

  void setSetor(int nominal) {
    _saldo += nominal;
  }

  bool ambilTunai(int nominal) {
    if (_saldo >= nominal) {
      _saldo -= nominal;
      return true;
    }
    return false;
  }
}
