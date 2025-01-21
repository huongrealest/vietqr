import 'package:vietqr_generator/vietqr_generator.dart';

void main() {
  final qr = QrPay.vietQR(
    bin: '970407',
    bankNumber: '0386577672',
    purpose: 'henry an cut',
    amount: '1000000',
  ).build();
  // 00020101021138540010A00000072701240006970407011003865776720208QRIBFTTA5303704540710000005802VN62160812henry an cut6304A322
}
