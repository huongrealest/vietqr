import 'package:vietqr/src/constants/constanst.dart';
import 'package:vietqr/src/model/bank_model.dart';
import 'package:vietqr/src/utils/utils.dart';

class QrPay {
  final String? version;
  final String? initMethod;
  final Provider? provider;
  final Merchant? merchant;
  final Consumer? consumer;
  final String? category;
  final String? currency;
  final String? amount;
  final String? tipAndFeeType;
  final String? tipAndFeeAmount;
  final String? tipAndFeePercent;
  final String? nation;
  final String? city;
  final String? zipCode;
  final AdditionalDataModel? additionalData;
  final String? crc;
  QrPay({
    this.version = '01',
    this.initMethod = '11',
    this.provider,
    this.merchant,
    this.consumer,
    this.category,
    this.currency,
    this.amount,
    this.tipAndFeeType,
    this.tipAndFeeAmount,
    this.tipAndFeePercent,
    this.nation,
    this.city,
    this.zipCode,
    this.additionalData,
    this.crc,
  });

  String build() {
    final version = StringHelper.genFieldData(
      FieldID.VERSION.value,
      this.version,
    );
    final initMethod = StringHelper.genFieldData(
      FieldID.INIT_METHOD.value,
      this.initMethod,
    );
    final guid = StringHelper.genFieldData(
      ProviderFieldID.GUID.value,
      this.provider?.guid,
    );
    String providerDataContent = '';
    final bankBin = StringHelper.genFieldData(
      VietQRConsumerFieldID.BANK_BIN.value,
      this.consumer?.bankBin,
    );
    final bankNumber = StringHelper.genFieldData(
      VietQRConsumerFieldID.BANK_NUMBER.value,
      this.consumer?.bankNumber,
    );
    providerDataContent = bankBin + bankNumber;
    final provider = StringHelper.genFieldData(
      ProviderFieldID.DATA.value,
      providerDataContent,
    );
    final service = StringHelper.genFieldData(
      ProviderFieldID.SERVICE.value,
      this.provider?.service,
    );

    final providerData = StringHelper.genFieldData(
      this.provider?.fieldID,
      guid + provider + service,
    );
    final category = StringHelper.genFieldData(
      FieldID.CATEGORY.value,
      this.category,
    );
    final currency = StringHelper.genFieldData(
      FieldID.CURRENCY.value,
      this.currency ?? '704',
    );
    final amountStr = StringHelper.genFieldData(
      FieldID.AMOUNT.value,
      this.amount,
    );
    final tipAndFeeType = StringHelper.genFieldData(
      FieldID.TIP_AND_FEE_TYPE.value,
      this.tipAndFeeType,
    );
    final tipAndFeeAmount = StringHelper.genFieldData(
      FieldID.TIP_AND_FEE_AMOUNT.value,
      this.tipAndFeeAmount,
    );
    final tipAndFeePercent = StringHelper.genFieldData(
      FieldID.TIP_AND_FEE_PERCENT.value,
      this.tipAndFeePercent,
    );
    final nation = StringHelper.genFieldData(
      FieldID.NATION.value,
      this.nation ?? 'VN',
    );
    final merchantName = StringHelper.genFieldData(
      FieldID.MERCHANT_NAME.value,
      this.merchant?.name,
    );
    final city = StringHelper.genFieldData(FieldID.CITY.value, this.city);
    final zipCode = StringHelper.genFieldData(
      FieldID.ZIP_CODE.value,
      this.zipCode,
    );
    final buildNumber = StringHelper.genFieldData(
      AdditionalDataID.BILL_NUMBER.value,
      this.additionalData?.billNumber,
    );
    final mobileNumber = StringHelper.genFieldData(
      AdditionalDataID.MOBILE_NUMBER.value,
      this.additionalData?.mobileNumber,
    );
    final storeLabel = StringHelper.genFieldData(
      AdditionalDataID.STORE_LABEL.value,
      this.additionalData?.store,
    );
    final loyaltyNumber = StringHelper.genFieldData(
      AdditionalDataID.LOYALTY_NUMBER.value,
      this.additionalData?.loyaltyNumber,
    );
    final reference = StringHelper.genFieldData(
      AdditionalDataID.REFERENCE_LABEL.value,
      this.additionalData?.reference,
    );
    final customerLabel = StringHelper.genFieldData(
      AdditionalDataID.CUSTOMER_LABEL.value,
      this.additionalData?.customerLabel,
    );
    final terminal = StringHelper.genFieldData(
      AdditionalDataID.TERMINAL_LABEL.value,
      this.additionalData?.terminal,
    );
    final purpose = StringHelper.genFieldData(
      AdditionalDataID.PURPOSE_OF_TRANSACTION.value,
      this.additionalData?.purpose,
    );
    final dataRequest = StringHelper.genFieldData(
      AdditionalDataID.ADDITIONAL_CONSUMER_DATA_REQUEST.value,
      this.additionalData?.dataRequest,
    );

    final additionalDataContent = buildNumber +
        mobileNumber +
        storeLabel +
        loyaltyNumber +
        reference +
        customerLabel +
        terminal +
        purpose +
        dataRequest;
    final additionalData = StringHelper.genFieldData(
      FieldID.ADDITIONAL_DATA.value,
      additionalDataContent,
    );
    final content =
        '${version}${initMethod}${providerData}${category}${currency}${amountStr}${tipAndFeeType}${tipAndFeeAmount}${tipAndFeePercent}${nation}${merchantName}${city}${zipCode}${additionalData}${FieldID.CRC.value}04';
    final crc = StringHelper.genCRCCode(content);
    return content + crc;
  }

  factory QrPay.vietQR({
    required String bankCode,
    required String bankNumber,
    String? amount,
    VietQRService? service,
    String? purpose,
  }) {
    final provider = Provider(
      fieldID: FieldID.VIETQR.value,
      name: 'VIETQR',
      guid: 'A000000727',
      service: (service ?? VietQRService.BY_ACCOUNT_NUMBER).value,
    );
    final consumer = Consumer(
      bankBin: bankMap[bankCode]?.bin ?? '',
      bankNumber: bankNumber,
    );
    return QrPay(
      initMethod: amount == null ? '12' : '11',
      provider: provider,
      consumer: consumer,
      amount: amount,
      additionalData: AdditionalDataModel(purpose: purpose),
    );
  }
}
