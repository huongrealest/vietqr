import 'package:vietqr/vietqr.dart';

void main() {
  final qrPay = QrPay.vietQR(
    bankKey: BAN,
    bankNumber: bankNumber,
  );
}
