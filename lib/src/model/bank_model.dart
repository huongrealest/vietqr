import 'package:vietqr/src/constants/bank_codes.dart';
import 'package:vietqr/src/constants/bank_keys.dart';

enum VietQRStatus { NOT_SUPPORTED, RECEIVE_ONLY, TRANSFER_SUPPORTED }

class BankModel {
  final String key;
  final String code;
  final String name;
  final String shortName;
  final String bin;
  final VietQRStatus vietQRStatus;
  final int? lookupSupported;
  final String? swiftCode;
  final String? keywords;

  BankModel({
    required this.key,
    required this.code,
    required this.name,
    required this.shortName,
    required this.bin,
    required this.vietQRStatus,
    this.lookupSupported,
    this.swiftCode,
    this.keywords,
  });
}

enum Bank {
  ABBANK(
    key: 'abbank',
    code: 'ABB',
    bin: '970425',
  ),
  ACB(
    key: 'acb',
    code: 'ACB',
    bin: '970416',
  ),
  AGRIBANK(
    key: 'agribank',
    code: 'AGRIBANK',
    bin: '970405',
  ),
  BAC_A_BANK(
    key: 'bacabank',
    code: 'BAC_A_BANK',
    bin: '970409',
  ),
  BAOVIET_BANK(
    key: 'baoviet',
    code: 'BAOVIETBANK',
    bin: '970438',
  ),
  ABBANK(
    key: ,
    code: ,
    bin: ,
  ),
  ABBANK(
    key: ,
    code: ,
    bin: ,
  ),
  ABBANK(
    key: ,
    code: ,
    bin: ,
  ),
  WOORI_BANK(
    key: 'wooribank',
    code: 'WRB',
    bin: '970457',
  );

  const Bank({
    required this.key,
    required this.code,
    required this.bin,
  });
  final String key;
  final String code;
  final String bin;
}

final Map<String, BankModel> bankMap = {
  
  
  
  
  BankKey.BAOVIET_BANK: BankModel(
      key: BankKey.BAOVIET_BANK,
      code: BankCode.BAOVIET_BANK,
      name: 'Ngân hàng TMCP Bảo Việt',
      bin: '970438',
      shortName: 'BaoViet Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'BVBVVNVX',
      keywords: 'baoviet, BVB'),
  BankKey.BIDC: BankModel(
      key: BankKey.BIDC,
      code: BankCode.BIDC,
      name: 'Ngân hàng TMCP Đầu tư và Phát triển Campuchia',
      bin: '',
      shortName: 'BIDC',
      vietQRStatus: VietQRStatus.NOT_SUPPORTED),
  BankKey.BIDV: BankModel(
      key: BankKey.BIDV,
      code: BankCode.BIDV,
      name: 'Ngân hàng TMCP Đầu tư và Phát triển Việt Nam',
      bin: '970418',
      shortName: 'BIDV',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'BIDVVNVX'),
  BankKey.CAKE: BankModel(
      key: BankKey.CAKE,
      code: BankCode.CAKE,
      name: 'Ngân hàng số CAKE by VPBank - Ngân hàng TMCP Việt Nam Thịnh Vượng',
      bin: '546034',
      shortName: 'CAKE by VPBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: null),
  BankKey.CBBANK: BankModel(
      key: BankKey.CBBANK,
      code: BankCode.CBBANK,
      name: 'Ngân hàng Thương mại TNHH MTV Xây dựng Việt Nam',
      bin: '970444',
      shortName: 'CB Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'GTBAVNVX',
      keywords: 'xaydungvn, xaydung'),
  BankKey.CIMB: BankModel(
      key: BankKey.CIMB,
      code: BankCode.CIMB,
      name: 'Ngân hàng TNHH MTV CIMB Việt Nam',
      bin: '422589',
      shortName: 'CIMB Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'CIBBVNVN',
      keywords: 'cimbvn'),
  BankKey.COOP_BANK: BankModel(
      key: BankKey.COOP_BANK,
      code: BankCode.COOP_BANK,
      name: 'Ngân hàng Hợp tác xã Việt Nam',
      bin: '970446',
      shortName: 'Co-op Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: null,
      keywords: 'hoptacxa, coop'),
  BankKey.DBS_BANK: BankModel(
      key: BankKey.DBS_BANK,
      code: BankCode.DBS_BANK,
      name: 'NH TNHH MTV Phát triển Singapore - Chi nhánh TP. Hồ Chí Minh',
      bin: '796500',
      shortName: 'DBS Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 0,
      swiftCode: 'DBSSVNVX',
      keywords: 'dbshcm'),
  BankKey.DONG_A_BANK: BankModel(
      key: BankKey.DONG_A_BANK,
      code: BankCode.DONG_A_BANK,
      name: 'Ngân hàng TMCP Đông Á',
      bin: '970406',
      shortName: 'DongA Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'EACBVNVX',
      keywords: 'donga, DAB'),
  BankKey.EXIMBANK: BankModel(
      key: BankKey.EXIMBANK,
      code: BankCode.EXIMBANK,
      name: 'Ngân hàng TMCP Xuất Nhập khẩu Việt Nam',
      bin: '970431',
      shortName: 'Eximbank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'EBVIVNVX'),
  BankKey.GPBANK: BankModel(
      key: BankKey.GPBANK,
      code: BankCode.GPBANK,
      name: 'Ngân hàng Thương mại TNHH MTV Dầu Khí Toàn Cầu',
      bin: '970408',
      shortName: 'GPBank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'GBNKVNVX',
      keywords: 'daukhi'),
  BankKey.HDBANK: BankModel(
      key: BankKey.HDBANK,
      code: BankCode.HDBANK,
      name: 'Ngân hàng TMCP Phát triển TP. Hồ Chí Minh',
      bin: '970437',
      shortName: 'HDBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'HDBCVNVX'),
  BankKey.HONGLEONG_BANK: BankModel(
      key: BankKey.HONGLEONG_BANK,
      code: BankCode.HONGLEONG_BANK,
      name: 'Ngân hàng TNHH MTV Hong Leong Việt Nam',
      bin: '970442',
      shortName: 'HongLeong Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'HLBBVNVX',
      keywords: 'HLBVN'),
  BankKey.HSBC: BankModel(
      key: BankKey.HSBC,
      code: BankCode.HSBC,
      name: 'Ngân hàng TNHH MTV HSBC (Việt Nam)',
      bin: '458761',
      shortName: 'HSBC Vietnam',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'HSBCVNVX'),
  BankKey.IBK_HCM: BankModel(
      key: BankKey.IBK_HCM,
      code: BankCode.IBK_HCM,
      name: 'Ngân hàng Công nghiệp Hàn Quốc - Chi nhánh TP. Hồ Chí Minh',
      bin: '970456',
      shortName: 'IBK HCM',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 0,
      swiftCode: null,
      keywords: 'congnghiep'),
  BankKey.IBK_HN: BankModel(
      key: BankKey.IBK_HN,
      code: BankCode.IBK_HN,
      name: 'Ngân hàng Công nghiệp Hàn Quốc - Chi nhánh Hà Nội',
      bin: '970455',
      shortName: 'IBK HN',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 0,
      swiftCode: null,
      keywords: 'congnghiep'),
  BankKey.INDOVINA_BANK: BankModel(
      key: BankKey.INDOVINA_BANK,
      code: BankCode.INDOVINA_BANK,
      name: 'Ngân hàng TNHH Indovina',
      bin: '970434',
      shortName: 'Indovina Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: null),
  BankKey.KASIKORN_BANK: BankModel(
      key: BankKey.KASIKORN_BANK,
      code: BankCode.KASIKORN_BANK,
      name: 'Ngân hàng Đại chúng TNHH KASIKORNBANK - CN TP. Hồ Chí Minh',
      bin: '668888',
      shortName: 'Kasikornbank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'KASIVNVX'),
  BankKey.KIENLONG_BANK: BankModel(
      key: BankKey.KIENLONG_BANK,
      code: BankCode.KIENLONG_BANK,
      name: 'Ngân hàng TMCP Kiên Long',
      bin: '970452',
      shortName: 'KienlongBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'KLBKVNVX'),
  BankKey.KOOKMIN_BANK_HCM: BankModel(
      key: BankKey.KOOKMIN_BANK_HCM,
      code: BankCode.KOOKMIN_BANK_HCM,
      name: 'Ngân hàng Kookmin - Chi nhánh TP. Hồ Chí Minh',
      bin: '970463',
      shortName: 'Kookmin Bank HCM',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 0,
      swiftCode: null),
  BankKey.KOOKMIN_BANK_HN: BankModel(
      key: BankKey.KOOKMIN_BANK_HN,
      code: BankCode.KOOKMIN_BANK_HN,
      name: 'Ngân hàng Kookmin - Chi nhánh Hà Nội',
      bin: '970462',
      shortName: 'Kookmin Bank HN',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 0,
      swiftCode: null),
  BankKey.LIENVIETPOST_BANK: BankModel(
      key: BankKey.LIENVIETPOST_BANK,
      code: BankCode.LIENVIETPOST_BANK,
      name: 'Ngân hàng TMCP Bưu Điện Liên Việt',
      bin: '970449',
      shortName: 'LienVietPostBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'LVBKVNVX',
      keywords: 'lienvietbank'),
  BankKey.MBBANK: BankModel(
      key: BankKey.MBBANK,
      code: BankCode.MBBANK,
      name: 'Ngân hàng TMCP Quân đội',
      bin: '970422',
      shortName: 'MB Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'MSCBVNVX'),
  BankKey.MSB: BankModel(
      key: BankKey.MSB,
      code: BankCode.MSB,
      name: 'Ngân hàng TMCP Hàng Hải',
      bin: '970426',
      shortName: 'MSB',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'MCOBVNVX',
      keywords: 'hanghai'),
  BankKey.NAM_A_BANK: BankModel(
      key: BankKey.NAM_A_BANK,
      code: BankCode.NAM_A_BANK,
      name: 'Ngân hàng TMCP Nam Á',
      bin: '970428',
      shortName: 'Nam A Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'NAMAVNVX',
      keywords: 'namabank'),
  BankKey.NCB: BankModel(
      key: BankKey.NCB,
      code: BankCode.NCB,
      name: 'Ngân hàng TMCP Quốc Dân',
      bin: '970419',
      shortName: 'NCB Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'NVBAVNVX',
      keywords: 'quocdan'),
  BankKey.NONGHYUP_BANK_HN: BankModel(
      key: BankKey.NONGHYUP_BANK_HN,
      code: BankCode.NONGHYUP_BANK_HN,
      name: 'Ngân hàng Nonghyup - Chi nhánh Hà Nội',
      bin: '801011',
      shortName: 'Nonghyup Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 0,
      swiftCode: null),
  BankKey.OCB: BankModel(
      key: BankKey.OCB,
      code: BankCode.OCB,
      name: 'Ngân hàng TMCP Phương Đông',
      bin: '970448',
      shortName: 'OCB Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'ORCOVNVX',
      keywords: 'phuongdong'),
  BankKey.OCEANBANK: BankModel(
      key: BankKey.OCEANBANK,
      code: BankCode.OCEANBANK,
      name: 'Ngân hàng Thương mại TNHH MTV Đại Dương',
      bin: '970414',
      shortName: 'Ocean Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'OCBKUS3M',
      keywords: 'daiduong'),
  BankKey.PGBANK: BankModel(
      key: BankKey.PGBANK,
      code: BankCode.PGBANK,
      name: 'Ngân hàng TMCP Xăng dầu Petrolimex',
      bin: '970430',
      shortName: 'PG Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'PGBLVNVX'),
  BankKey.PUBLIC_BANK: BankModel(
      key: BankKey.PUBLIC_BANK,
      code: BankCode.PUBLIC_BANK,
      name: 'Ngân hàng TNHH MTV Public Việt Nam',
      bin: '970439',
      shortName: 'Public Bank Vietnam',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'VIDPVNVX',
      keywords: 'publicvn'),
  BankKey.PVCOM_BANK: BankModel(
      key: BankKey.PVCOM_BANK,
      code: BankCode.PVCOM_BANK,
      name: 'Ngân hàng TMCP Đại Chúng Việt Nam',
      bin: '970412',
      shortName: 'PVcomBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'WBVNVNVX',
      keywords: 'daichung'),
  BankKey.SACOMBANK: BankModel(
      key: BankKey.SACOMBANK,
      code: BankCode.SACOMBANK,
      name: 'Ngân hàng TMCP Sài Gòn Thương Tín',
      bin: '970403',
      shortName: 'Sacombank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'SGTTVNVX'),
  BankKey.SAIGONBANK: BankModel(
      key: BankKey.SAIGONBANK,
      code: BankCode.SAIGONBANK,
      name: 'Ngân hàng TMCP Sài Gòn Công Thương',
      bin: '970400',
      shortName: 'SaigonBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'SBITVNVX',
      keywords: 'saigoncongthuong, saigonbank'),
  BankKey.SCB: BankModel(
      key: BankKey.SCB,
      code: BankCode.SCB,
      name: 'Ngân hàng TMCP Sài Gòn',
      bin: '970429',
      shortName: 'SCB',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'SACLVNVX',
      keywords: 'saigon'),
  BankKey.SEA_BANK: BankModel(
      key: BankKey.SEA_BANK,
      code: BankCode.SEA_BANK,
      name: 'Ngân hàng TMCP Đông Nam Á',
      bin: '970440',
      shortName: 'SeABank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'SEAVVNVX'),
  BankKey.SHB: BankModel(
      key: BankKey.SHB,
      code: BankCode.SHB,
      name: 'Ngân hàng TMCP Sài Gòn - Hà Nội',
      bin: '970443',
      shortName: 'SHB',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'SHBAVNVX',
      keywords: 'saigonhanoi, sghn'),
  BankKey.SHINHAN_BANK: BankModel(
      key: BankKey.SHINHAN_BANK,
      code: BankCode.SHINHAN_BANK,
      name: 'Ngân hàng TNHH MTV Shinhan Việt Nam',
      bin: '970424',
      shortName: 'Shinhan Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'SHBKVNVX'),
  BankKey.STANDARD_CHARTERED_BANK: BankModel(
      key: BankKey.STANDARD_CHARTERED_BANK,
      code: BankCode.STANDARD_CHARTERED_BANK,
      name: 'Ngân hàng TNHH MTV Standard Chartered Bank Việt Nam',
      bin: '970410',
      shortName: 'Standard Chartered Vietnam',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: 'SCBLVNVX'),
  BankKey.TECHCOMBANK: BankModel(
      key: BankKey.TECHCOMBANK,
      code: BankCode.TECHCOMBANK,
      name: 'Ngân hàng TMCP Kỹ thương Việt Nam',
      bin: '970407',
      shortName: 'Techcombank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'VTCBVNVX'),
  BankKey.TIMO: BankModel(
      key: BankKey.TIMO,
      code: BankCode.TIMO,
      name: 'Ngân hàng số Timo by Bản Việt Bank',
      bin: '963388',
      shortName: 'Timo',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 0,
      swiftCode: null,
      keywords: 'banviet'),
  BankKey.TPBANK: BankModel(
      key: BankKey.TPBANK,
      code: BankCode.TPBANK,
      name: 'Ngân hàng TMCP Tiên Phong',
      bin: '970423',
      shortName: 'TPBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'TPBVVNVX',
      keywords: 'tienphong'),
  BankKey.UBANK: BankModel(
      key: BankKey.UBANK,
      code: BankCode.UBANK,
      name:
          'Ngân hàng số Ubank by VPBank - Ngân hàng TMCP Việt Nam Thịnh Vượng',
      bin: '546035',
      shortName: 'Ubank by VPBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: null),
  BankKey.UNITED_OVERSEAS_BANK: BankModel(
      key: BankKey.UNITED_OVERSEAS_BANK,
      code: BankCode.UNITED_OVERSEAS_BANK,
      name: 'Ngân hàng United Overseas Bank Việt Nam',
      bin: '970458',
      shortName: 'United Overseas Bank Vietnam',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: null),
  BankKey.VIB: BankModel(
      key: BankKey.VIB,
      code: BankCode.VIB,
      name: 'Ngân hàng TMCP Quốc tế Việt Nam',
      bin: '970441',
      shortName: 'VIB',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'VNIBVNVX',
      keywords: 'quocte'),
  BankKey.VIET_A_BANK: BankModel(
      key: BankKey.VIET_A_BANK,
      code: BankCode.VIET_A_BANK,
      name: 'Ngân hàng TMCP Việt Á',
      bin: '970427',
      shortName: 'VietABank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'VNACVNVX'),
  BankKey.VIET_BANK: BankModel(
      key: BankKey.VIET_BANK,
      code: BankCode.VIET_BANK,
      name: 'Ngân hàng TMCP Việt Nam Thương Tín',
      bin: '970433',
      shortName: 'VietBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'VNTTVNVX',
      keywords: 'vietnamthuongtin, vnthuongtin'),
  BankKey.VIETCAPITAL_BANK: BankModel(
      key: BankKey.VIETCAPITAL_BANK,
      code: BankCode.VIETCAPITAL_BANK,
      name: 'Ngân hàng TMCP Bản Việt',
      bin: '970454',
      shortName: 'Viet Capital Bank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'VCBCVNVX',
      keywords: 'banviet'),
  BankKey.VIETCOMBANK: BankModel(
      key: BankKey.VIETCOMBANK,
      code: BankCode.VIETCOMBANK,
      name: 'Ngân hàng TMCP Ngoại Thương Việt Nam',
      bin: '970436',
      shortName: 'Vietcombank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'BFTVVNVX'),
  BankKey.VIETINBANK: BankModel(
      key: BankKey.VIETINBANK,
      code: BankCode.VIETINBANK,
      name: 'Ngân hàng TMCP Công thương Việt Nam',
      bin: '970415',
      shortName: 'VietinBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'ICBVVNVX',
      keywords: 'viettin' // Some users may use this keyword
      ),
  BankKey.VPBANK: BankModel(
      key: BankKey.VPBANK,
      code: BankCode.VPBANK,
      name: 'Ngân hàng TMCP Việt Nam Thịnh Vượng',
      bin: '970432',
      shortName: 'VPBank',
      vietQRStatus: VietQRStatus.TRANSFER_SUPPORTED,
      lookupSupported: 1,
      swiftCode: 'VPBKVNVX',
      keywords: 'vnthinhvuong'),
  BankKey.VRB: BankModel(
      key: BankKey.VRB,
      code: BankCode.VRB,
      name: 'Ngân hàng Liên doanh Việt - Nga',
      bin: '970421',
      shortName: 'VietNgaBank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: null,
      keywords: 'vietnam-russia, vrbank'),
  BankKey.WOORI_BANK: BankModel(
      key: BankKey.WOORI_BANK,
      code: BankCode.WOORI_BANK,
      name: 'Ngân hàng TNHH MTV Woori Việt Nam',
      bin: '970457',
      shortName: 'Woori Bank',
      vietQRStatus: VietQRStatus.RECEIVE_ONLY,
      lookupSupported: 1,
      swiftCode: null)
};
