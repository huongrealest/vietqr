enum FieldID {
  version('00'),
  initMethod('01'),
  vietqr('38'),
  category('52'),
  currency('53'),
  amount('54'),
  tipAndFeeType('55'),
  tipAndFeeAmount('56'),
  tipAndFeePercent('57'),
  nation('58'),
  merchantName('59'),
  city('60'),
  zipCode('61'),
  addtionalData('62'),
  crc('63');

  const FieldID(this.value);

  final String value;
}

enum ProviderFieldID {
  guid('00'),
  data('01'),
  service('02');

  const ProviderFieldID(this.value);

  final String value;
}

enum VietQRService {
  byAccountNumber('QRIBFTTA'), // Dịch vụ chuyển nhanh NAPAS247 đến Tài khoản
  byCardNumber('QRIBFTTC'); // Dịch vụ chuyển nhanh NAPAS247 đến Thẻ

  const VietQRService(this.value);

  final String value;
}

enum VietQRConsumerFieldID {
  bankBin('00'),
  bankNumber('01');

  const VietQRConsumerFieldID(this.value);

  final String value;
}

enum AdditionalDataID {
  billNumber('01'), // Số hóa đơn
  mobileNumber('02'), // Số ĐT
  storeLabel('03'), // Mã cửa hàng
  loyaltyNumber('04'), // Mã khách hàng thân thiết
  referenceLabel('05'), // Mã tham chiếu
  customerLabel('06'), // Mã khách hàng
  terminalLabel('07'), // Mã số điểm bán
  purposeOfTransaction('08'), // Mục đích giao dịch
  addtionalConsumerDataRequest('09'); // Yêu cầu dữ liệu KH bổ sung

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
