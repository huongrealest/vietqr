# vietqr

# Tài liệu
 - [VietQR Document](https://vietqr.net/portal-service/download/documents/QR_Format_T&C_v1.0_VN_092021.pdf)
 - [Danh sách ngân hàng](https://www.vietqr.io/danh-sach-api/api-danh-sach-ma-ngan-hang/)

## Thư viện được viết lại từ 1  thư viện js 
## Getting Started

Ví dụ:

```dart
final qr = QrPay.vietQR(
    bin: '970418',
    bankNumber: '2170347751',
  ).build();
  // 00020101021238540010A00000072701240006970418011021703477510208QRIBFTTA53037045802VN63048687
```
Bin code bạn có thể lấy từ [Danh sách ngân hàng](https://www.vietqr.io/danh-sach-api/api-danh-sach-ma-ngan-hang/)
