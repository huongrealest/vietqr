# vietqr

# Tài liệu
 - [VietQR Document](https://vietqr.net/portal-service/download/documents/QR_Format_T&C_v1.0_VN_092021.pdf)
 - [Danh sách ngân hàng](https://www.vietqr.io/danh-sach-api/api-danh-sach-ma-ngan-hang/)

## Thư viện được viết lại từ 1  thư viện js 
## Getting Started

Ví dụ:

```dart
final qr = QrPay.vietQR(
    bin: '970407',
    bankNumber: '0386577672',
    purpose: 'henry an cut',
    amount: '1000000',
  ).build();
  // 00020101021138540010A00000072701240006970407011003865776720208QRIBFTTA5303704540710000005802VN62160812henry an cut6304A322
```
Bin bạn có thể lấy từ [Danh sách ngân hàng](https://www.vietqr.io/danh-sach-api/api-danh-sach-ma-ngan-hang/)
