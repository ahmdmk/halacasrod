import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hala_casrod_app/utils/shared_preferance.dart';



final getIt = GetIt.instance;


Future<void> setup() async{
  const secureStorage =  FlutterSecureStorage();
   getIt.registerSingleton<SecureStorageService>(SecureStorageService(secureStorage));
  getIt.registerSingleton<PreferenceService>(PreferenceService());
  getIt.registerSingleton<CommonData>(CommonData());
  await getIt<PreferenceService>().init();
}


 class CommonData{

  String ? token;

  setToken({token}){
    this.token = token;
  }

 }






