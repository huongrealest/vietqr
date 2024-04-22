enum Bank {
  SHB(
    code: 'SHB',
    bin: '970443',
    name: 'Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)',
    icon: 'assets/SHB.png',
  ),
  BIDV(
    code: 'BID',
    bin: '970418',
    name: 'Ngân hàng TMCP Đầu tư và Phát triển Việt Nam (BIDV)',
    icon: 'assets/BIDV.png',
  ),
  VCB(
    code: 'VCB',
    bin: '970436',
    name: 'Ngân hàng TMCP Ngoại thương Việt Nam (VCB)',
    icon: 'assets/BIDV.png',
  ),
  MBBANK(
    code: 'MBB',
    bin: '970422',
    name: 'Ngân hàng TMCP Quân Đội (MBB)',
    icon: 'assets/BIDV.png',
  ),
  ACB(
    code: 'ACB',
    bin: '970416',
    icon: 'assets/ACB.png',
    name: 'Ngân hàng TMCP Á Châu (ACB)',
  ),
  EIB(
    code: 'EIB',
    bin: '970431',
    icon: 'assets/EIB.png',
    name: 'Ngân hàng TMCP Xuất Nhập khẩu Việt Nam',
  );

  const Bank({
    required this.code,
    required this.bin,
    required this.icon,
    required this.name,
  });
  final String code;
  final String bin;
  final String name;
  final String icon;
}
