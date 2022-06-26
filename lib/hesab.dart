import 'package:yasam_beklentisi/user_deta.dart';

class Hesap {
  UserData _userData;

  Hesap(this._userData);

  double hesaplama() {
    double sonuc;

    sonuc = 90 + _userData.sporGunu - _userData.icilenSigaret;

    sonuc = sonuc + (_userData.boy / _userData.kilo);

    _userData.seciliCinsiyyet == 'KADIN' ? sonuc + 3 : sonuc;
    return sonuc;
  }
}
