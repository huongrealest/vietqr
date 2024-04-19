enum FieldID {
  VERSION('00'),
  INIT_METHOD('01'),
  VIETQR('38'),
  CATEGORY('52'),
  CURRENCY('53'),
  AMOUNT('54'),
  TIP_AND_FEE_TYPE('55'),
  TIP_AND_FEE_AMOUNT('56'),
  TIP_AND_FEE_PERCENT('57'),
  NATION('58'),
  MERCHANT_NAME('59'),
  CITY('60'),
  ZIP_CODE('61'),
  ADDITIONAL_DATA('62'),
  CRC('63');

  const FieldID(this.value);

  final String value;
}

enum ProviderFieldID {
  GUID('00'),
  DATA('01'),
  SERVICE('02');

  const ProviderFieldID(this.value);

  final String value;
}

enum VietQRService {
  BY_ACCOUNT_NUMBER('QRIBFTTA'), // Dịch vụ chuyển nhanh NAPAS247 đến Tài khoản
  BY_CARD_NUMBER('QRIBFTTC'); // Dịch vụ chuyển nhanh NAPAS247 đến Thẻ

  const VietQRService(this.value);

  final String value;
}

enum VietQRConsumerFieldID {
  BANK_BIN('00'),
  BANK_NUMBER('01');

  const VietQRConsumerFieldID(this.value);

  final String value;
}

enum AdditionalDataID {
  BILL_NUMBER('01'), // Số hóa đơn
  MOBILE_NUMBER('02'), // Số ĐT
  STORE_LABEL('03'), // Mã cửa hàng
  LOYALTY_NUMBER('04'), // Mã khách hàng thân thiết
  REFERENCE_LABEL('05'), // Mã tham chiếu
  CUSTOMER_LABEL('06'), // Mã khách hàng
  TERMINAL_LABEL('07'), // Mã số điểm bán
  PURPOSE_OF_TRANSACTION('08'), // Mục đích giao dịch
  ADDITIONAL_CONSUMER_DATA_REQUEST('09'); // Yêu cầu dữ liệu KH bổ sung

  const AdditionalDataID(this.value);

  final String value;
}

class Provider {
  final String fieldID;
  final String name;
  final String guid;
  final String service;
  Provider({
    required this.fieldID,
    required this.name,
    required this.guid,
    required this.service,
  });
}

class AdditionalDataModel {
  final String? billNumber;
  final String? mobileNumber;
  final String? store;
  final String? loyaltyNumber;
  final String? reference;
  final String? customerLabel;
  final String? terminal;
  final String? purpose;
  final String? dataRequest;
  AdditionalDataModel({
    this.billNumber,
    this.mobileNumber,
    this.store,
    this.loyaltyNumber,
    this.reference,
    this.customerLabel,
    this.terminal,
    this.purpose,
    this.dataRequest,
  });
}

class Consumer {
  final String bankBin;
  final String bankNumber;
  Consumer({
    required this.bankBin,
    required this.bankNumber,
  });
}

class Merchant {
  final String id;
  final String name;
  Merchant({
    required this.id,
    required this.name,
  });
}
