import 'tabungan.dart';

void main(List<String> args) {
  Tabungan tabungan = Tabungan(50000);
  print('get saldo java version: ${tabungan.getSaldo()}');
  print('get saldo dart version: ${tabungan.saldo}');

  print('mau stor tunai 70.000');
  tabungan.setor = 70000;
  tabungan.setSetor(70000);

  print('get saldo dart version: ${tabungan.saldo}');

  print('ambil tunai 200.000');
  bool isSuccess = tabungan.ambilTunai(190000);

  print('ambil dana : ${isSuccess ? 'Sukses' : 'Gagal'}');

  print('get saldo dart version: ${tabungan.saldo}');
}
