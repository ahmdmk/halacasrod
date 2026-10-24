import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala_casrod_app/common_controller/login_controllere.dart';
import 'package:hala_casrod_app/utils/validation.dart';
import 'package:hala_casrod_app/views/auth/business_registration_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../app_constant/app_images.dart';
import '../../utils/app_theme.dart';
import '../../viewmodels/auth_viewmodel.dart';

class LoginScreen extends HookConsumerWidget {
   LoginScreen({super.key});


  final controller = Get.put(LoginController());

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();


  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // final authState = ref.watch(authViewModelProvider);
    // final authViewModel = ref.read(authViewModelProvider.notifier);

    // useEffect(() {
    //   if (authState == AuthState.authenticated) {
    //     context.go('/home');
    //   }
    //   return null;
    // }, [authState]);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff0FF1E40AF),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 24,),


                    // CachedNetworkImage(
                    //   imageUrl: "https://www.smartflixtech.com/hala/logo.png",
                    //   fit: BoxFit.contain,
                    //   height: MediaQuery.of(context).size.width * .5,
                    //   width: MediaQuery.of(context).size.width * .5,
                    //   placeholder: (context, url) => const CircularProgressIndicator(),
                    //   errorWidget: (context, url, error) => const Icon(Icons.error),
                    // ),


                    SizedBox(
                      height: MediaQuery.of(context).size.height * .08,
                    ),


                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Email field
                    TextFormField(
                      controller: userNameController,
                      validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required!"),
                      decoration: const InputDecoration(
                        hintText: 'Username',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    // Password field
                    TextFormField(
                      controller: passwordController,
                      validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required!"),
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 32),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.isLoading.value ? null :(){
                          if(formKey.currentState?.validate() ?? false){
                            controller.login(context: context,
                             userName: userNameController.text,
                              password: passwordController.text
                            );
                          }
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessRegistrationScreen()));
                        }

                        /*authState == AuthState.loading
                            ? null
                            : () async {
                                final success = await authViewModel.login(
                                  emailController.text.trim(),
                                  passwordController.text,
                                );
                                if (!success && context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(authViewModel.errorMessage ?? 'Login failed'),
                                      backgroundColor: AppTheme.accentRed,
                                    ),
                                  );
                                }
                              }*/,
                        child: controller.isLoading.value ?  SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppTheme.white,
                          ),
                        ):

                        /*authState == AuthState.loading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppTheme.white,
                                ),
                              )
                            : */

                        const Text('Login'),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}