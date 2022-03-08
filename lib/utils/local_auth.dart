import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();


  static Future<bool> hasBiometrics() async{
    return _auth.canCheckBiometrics;
  }
  static Future<bool> authenticate() async {
    final bool  isBiometrics=await hasBiometrics();
    if(!isBiometrics) return false;
   try {
      return await _auth.authenticate(
      localizedReason: 'Scan Fingerprint to Authenticate',
      biometricOnly: true,
      // useErrorDialogs: true,
      // stickyAuth: true,
    );
   } on PlatformException catch (e) {
   print(e);
   return false;
   }
  }
}
// set up firebase auth
