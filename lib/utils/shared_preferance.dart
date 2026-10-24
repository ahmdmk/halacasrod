import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';



class PreferenceService {
 late  SharedPreferences  _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get isMasjid => _prefs.getBool("isMasjidId") ?? false;

  set isMasjid(bool value) {
    _prefs.setBool("isMasjidId", value);
  }


}
/*
class SharedPref {




   String accessToken = "accessToken";
   String userID = "userId";
   String coId = "coId";
   String name = "name";


   final SharedPreferences  prefs;

   SharedPref(this.prefs);

   Future<void> setString({key,value})async{
    await  prefs.setString(key, value);
  }



   getString({key})async{
    return prefs.getString(key);
  }


   removeString({key})async{
    await  prefs.remove(key);
  }

   Future<void> clear() async {
     await prefs.clear();
   }


   bool containsKey({required String key}) {
     return prefs.containsKey(key);
   }
}
*/


/// A service class to manage secure key-value storage using FlutterSecureStorage.
class SecureStorageService {
  final String accessToken = "accessToken";
  final String masjidId = "masjidId";


  // Instantiate FlutterSecureStorage
  final FlutterSecureStorage _secureStorage;

  SecureStorageService(this._secureStorage);

  Future<void> setString({required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> getString({required String key}) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> removeString({required String key}) async {
    await _secureStorage.delete(key: key);
  }

  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }

  Future<bool> containsKey({required String key}) async {
    final String? value = await _secureStorage.read(key: key);
    return value != null;
  }
}
