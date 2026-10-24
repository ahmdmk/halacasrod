import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:hala_casrod_app/app_constant/app_images.dart';
import 'package:hala_casrod_app/views/welcome_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../utils/app_theme.dart';
import '../utils/launch_url.dart';
import '../viewmodels/auth_viewmodel.dart';







class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigate();


  }

  navigate(){
    Future.delayed( const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(builder: (_) =>  WelcomeScreen()),
      //       (route) => false,
      // );

    });
  }

  @override
  Widget build(BuildContext context) {
    // final authState = ref.watch(authViewModelProvider);
    // final authViewModel = ref.read(authViewModelProvider.notifier);



    // useEffect(() {
    //   Future.delayed(const Duration(seconds: 2), () async {
    //     await authViewModel.checkAuthStatus();
    //   });
    //   return null;
    // }, []);
    //
    // useEffect(() {
    //   if (authState == AuthState.authenticated) {
    //     Future.microtask(() {
    //       if (context.mounted) context.go('/home');
    //     });
    //   } else if (authState == AuthState.unauthenticated) {
    //     Future.microtask(() {
    //       if (context.mounted) context.go('/welcome');
    //     });
    //   }
    //   return null;
    // }, [authState]);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
          // gradient: A,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(child: Image.asset(
             AppImages.splashLogo,
              width: MediaQuery.of(context).size.width * .5,
              fit: BoxFit.contain,
            ),),
            const Spacer(),
            InkWell(
              onTap: (){
                urlLaunch("http://www.smartflixtech.com");
              },
              child: Column(
                children: [
                  const Text("Smartflix Technologies", style: TextStyle(
                      fontSize: 17,
                      color: AppTheme.primaryBlue,
                      fontWeight: FontWeight.bold


                  ),),
                  const Text("Dubai Digital Park", style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.primaryBlue,fontWeight: FontWeight.bold


                  ),),

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .2,)
          ],
        ),
      ),
    );
  }

}