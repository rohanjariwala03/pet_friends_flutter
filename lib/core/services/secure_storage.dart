import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage{
  static const _storage= FlutterSecureStorage();
  static const _keyEmail='emailPetFriends';
  static const _keyPass='passPetFriends';

  static Future setEmail(String email) async =>
      await _storage.write(key: _keyEmail, value: email);

  static Future<String?> getEmail() async =>
      await _storage.read(key: _keyEmail);

  static Future setPass(String pass) async =>
      await _storage.write(key: _keyPass, value: pass);

  static Future<String?> getPass() async =>
      await _storage.read(key: _keyPass);

  static Future deleteData() async{
    await _storage.deleteAll();
  }
}