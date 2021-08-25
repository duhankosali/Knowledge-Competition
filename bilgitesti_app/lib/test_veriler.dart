import 'Soru.dart';

class TestVeri {
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: 'HTML web yazılımlarında kullanılan bir yazılım dilidir.',
        soruYaniti: true),
    Soru(soruMetni: 'Windows 10 bir tür web tarayıcısıdır.', soruYaniti: false),
    Soru(
        soruMetni: 'Bilgisayar kasası bir tür donanım birimidir',
        soruYaniti: false),
    Soru(
        soruMetni:
            'Yazılım donanım ile kullanıcı arasındaki iletişimi kuran ve donanımı kontrol eden programlardır.',
        soruYaniti: true),
    Soru(soruMetni: '1GB = 1024 Byte dan oluşmaktadır', soruYaniti: false),
    Soru(soruMetni: 'Anakart bir depolama birimidir.', soruYaniti: false),
    Soru(soruMetni: 'Kablosuz ağlara Wifi adı verilir.', soruYaniti: true),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void soruGec() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      _soruIndex++;
    }
  }

  //Son soruda mıyım?
  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length)
      return true;
    else {
      return false;
    }
  }

  void testSifirla() {
    _soruIndex = 0;
  }
}
