import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala_casrod_app/common_controller/common_controller.dart';
import 'package:hala_casrod_app/utils/get_it.dart';
import 'package:hala_casrod_app/views/splash_screen.dart';
import 'package:hala_casrod_app/views/welcome_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'utils/app_theme.dart';
import 'utils/app_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setup();

  final controller = Get.put(CommonController());
  await controller.fetchToken();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppTheme.primaryBlue,  // Set the background color
      statusBarIconBrightness: Brightness.light,  // Makes icons dark (use Brightness.dark for light icons)
    ),
  );
  runApp(
    const ProviderScope(
      child: HalaCasrodApp(),
    ),
  );
}

class HalaCasrodApp extends StatelessWidget {
  const HalaCasrodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Hala Casrod',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}