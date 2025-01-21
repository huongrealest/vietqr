import 'package:vietqr_generator/src/constants/constants.dart';
import 'package:vietqr_generator/src/helper/string.dart';

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
      FieldID.version.value,
      this.version,
    );
    final initMethod = StringHelper.genFieldData(
      FieldID.initMethod.value,
      this.initMethod,
    );
    final guid = StringHelper.genFieldData(
      ProviderFieldID.guid.value,
      this.provider?.guid,
    );
    String providerDataContent = '';
    final bankBin = StringHelper.genFieldData(
      VietQRConsumerFieldID.bankBin.value,
      consumer?.bankBin,
    );
    final bankNumber = StringHelper.genFieldData(
      VietQRConsumerFieldID.bankNumber.value,
      consumer?.bankNumber,
    );
    providerDataContent = bankBin + bankNumber;
    final provider = StringHelper.genFieldData(
      ProviderFieldID.data.value,
      providerDataContent,
    );
    final service = StringHelper.genFieldData(
      ProviderFieldID.service.value,
      this.provider?.service,
    );

    final providerData = StringHelper.genFieldData(
      this.provider?.fieldID,
      guid + provider + service,
    );
    final category = StringHelper.genFieldData(
      FieldID.category.value,
      this.category,
    );
    final currency = StringHelper.genFieldData(
      FieldID.currency.value,
      this.currency ?? '704',
    );
    final amountStr = StringHelper.genFieldData(
      FieldID.amount.value,
      amount,
    );
    final tipAndFeeType = StringHelper.genFieldData(
      FieldID.tipAndFeeType.value,
      this.tipAndFeeType,
    );
    final tipAndFeeAmount = StringHelper.genFieldData(
      FieldID.tipAndFeeAmount.value,
      this.tipAndFeeAmount,
    );
    final tipAndFeePercent = StringHelper.genFieldData(
      FieldID.tipAndFeePercent.value,
      this.tipAndFeePercent,
    );
    final nation = StringHelper.genFieldData(
      FieldID.nation.value,
      this.nation ?? 'VN',
    );
    final merchantName = StringHelper.genFieldData(
      FieldID.merchantName.value,
      merchant?.name,
    );
    final city = StringHelper.genFieldData(FieldID.city.value, this.city);
    final zipCode = StringHelper.genFieldData(
      FieldID.zipCode.value,
      this.zipCode,
    );
    final buildNumber = StringHelper.genFieldData(
      AdditionalDataID.billNumber.value,
      this.additionalData?.billNumber,
    );
    final mobileNumber = StringHelper.genFieldData(
      AdditionalDataID.mobileNumber.value,
      this.additionalData?.mobileNumber,
    );
    final storeLabel = StringHelper.genFieldData(
      AdditionalDataID.storeLabel.value,
      this.additionalData?.store,
    );
    final loyaltyNumber = StringHelper.genFieldData(
      AdditionalDataID.loyaltyNumber.value,
      this.additionalData?.loyaltyNumber,
    );
    final reference = StringHelper.genFieldData(
      AdditionalDataID.referenceLabel.value,
      this.additionalData?.reference,
    );
    final customerLabel = StringHelper.genFieldData(
      AdditionalDataID.customerLabel.value,
      this.additionalData?.customerLabel,
    );
    final terminal = StringHelper.genFieldData(
      AdditionalDataID.terminalLabel.value,
      this.additionalData?.terminal,
    );
    final purpose = StringHelper.genFieldData(
      AdditionalDataID.purposeOfTransaction.value,
      this.additionalData?.purpose,
    );
    final dataRequest = StringHelper.genFieldData(
      AdditionalDataID.addtionalConsumerDataRequest.value,
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
      FieldID.addtionalData.value,
      additionalDataContent,
    );
    final content =
        '$version$initMethod$providerData$category$currency$amountStr$tipAndFeeType$tipAndFeeAmount$tipAndFeePercent$nation$merchantName$city$zipCode$additionalData${FieldID.crc.value}04';
    final crc = StringHelper.genCRCCode(content);
    return content + crc;
  }

  factory QrPay.vietQR({
    required String bin,
    required String bankNumber,
    String? amount,
    VietQRService? service,
    String? purpose,
  }) {
    final provider = Provider(
      fieldID: FieldID.vietqr.value,
      name: 'VIETQR',
      guid: 'A000000727',
      service: (service ?? VietQRService.byAccountNumber).value,
    );
    final consumer = Consumer(
      bankBin: bin,
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
