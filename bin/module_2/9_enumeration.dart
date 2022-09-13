enum AccountType { free, premium, vip }

enum StatusPengiriman {pickup, process, delivered } //delivery, delivery, 

Data pengiriman = Data(status: StatusPengiriman.delivered);
// paymentStatus = StatusPayment.paid;
class Data {
  StatusPengiriman status;
  Data({
    required this.status,
  });
}

void main(List<String> args) {
  final userAccountType = AccountType.premium;
  print(userAccountType.index);
  AccountType.values[1];

  switch (userAccountType) {
    case AccountType.free:
      print('Rp 0');
      break;
    case AccountType.premium:
      print('Rp 100.000');
      break;
    case AccountType.vip:
      print('Rp 200.000');
      break;
  }
}
