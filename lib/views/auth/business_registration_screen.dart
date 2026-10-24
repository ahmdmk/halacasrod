import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala_casrod_app/common_controller/business_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../app_constant/app_images.dart';
import '../../utils/app_theme.dart';
import '../../utils/validation.dart';


class BusinessRegistrationScreen extends HookConsumerWidget {
   BusinessRegistrationScreen({super.key});

  final businessController  = Get.put(BusinessController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    /*final businessNameController = useTextEditingController();
    final mobileController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final websiteController = useTextEditingController();
    final addressController = useTextEditingController();

    ;*/

    // final authState = ref.watch(authViewModelProvider);
    // final authViewModel = ref.read(authViewModelProvider.notifier);
    //
    final selectedIndustry = useState<String>('CONSTRUCTION');
    final selectedEmirate = useState<String>('ABU_DHABI');

    useEffect(() {
       businessController.businessName.clear();
       businessController.industry.clear();
       businessController.mobileNumber.clear();
       businessController.emirate.clear();
       businessController.website.clear();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0FF1E40AF),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24,),
                // Align(
                //   alignment: Alignment.bottomLeft,
                //   child: CachedNetworkImage(
                //     imageUrl: "https://www.smartflixtech.com/hala/logo.png",
                //     fit: BoxFit.contain,
                //     height: MediaQuery.of(context).size.width * .4,
                //     width: MediaQuery.of(context).size.width * .4,
                //     placeholder: (context, url) => const CircularProgressIndicator(),
                //     errorWidget: (context, url, error) => const Icon(Icons.error),
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                          children: [
                            Image.asset(AppImages.business,
                              height: 35,
                              width: 35,
                            ),
                            const SizedBox(width: 6),
                           const  Text(
                              'Business\nRegistration',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: AppTheme.textDark,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        TextFormField(
                          controller: businessController.businessName,
                          validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),

                          decoration: const InputDecoration(hintText: 'Business Name',
                              fillColor: Colors.white,
                              filled: true

                          ),
                        ),
                        const SizedBox(height: 16),

                        DropdownButtonFormField<String>(
                          value: selectedIndustry.value,
                          decoration: const InputDecoration(hintText: 'Industry',
                              fillColor: Colors.white,
                              filled: true
                          ),
                          items: ['CONSTRUCTION', 'HOSPITALITY','HEALTHCARE', 'RETAIL', 'IT_SERVICES', 'LOGISTICS', 'REAL_ESTATE', 'AUTOMOTIVE', 'EDUCATION', 'FINANCE', 'OIL_GAS', 'OTHER']
                              .map((industry) => DropdownMenuItem(
                                    value: industry,
                                    child: Text(industry),
                                  ))
                              .toList(),
                          onChanged: (value) => selectedIndustry.value = value!,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: businessController.mobileNumber,
                          validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),

                          decoration: const InputDecoration(hintText: 'Mobile Number',
                              fillColor: Colors.white,
                              filled: true
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 16),

                        // TextFormField(
                        //   controller: businessController.emirate,
                        //   validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),
                        //
                        //   decoration: const InputDecoration(hintText: 'emirates',
                        //       fillColor: Colors.white,
                        //       filled: true
                        //   ),
                        // ),

                        // const SizedBox(height: 16),




                        DropdownButtonFormField<String>(
                          value: selectedEmirate.value,
                          decoration: const InputDecoration(hintText: 'Emirate',
                              fillColor: Colors.white,
                              filled: true
                          ),
                          items: ["ABU_DHABI", 'DUBAI', 'SHARJAH', 'AJMAN', 'UMM_AL_QUWAIN', 'RAS_AL_KHAIMAH', 'FUJAIRAH']
                              .map((emirate) => DropdownMenuItem(
                                    value: emirate,
                                    child: Text(emirate),
                                  ))
                              .toList(),
                          onChanged: (value) => selectedEmirate.value = value!,
                        ),

                        const SizedBox(height: 16),

                        TextFormField(
                          controller: businessController.website,
                          decoration: const InputDecoration(hintText: 'website',
                              fillColor: Colors.white,
                              filled: true
                          ),
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: Obx(()=> ElevatedButton(
                              onPressed: businessController.isLoading.value == true ?
                              null  :
                                  (){
                                if(formKey.currentState?.validate() ?? false){
                                  businessController.addBusiness(
                                    value: selectedIndustry.value,
                                    emirates:  selectedEmirate.value,
                                    context: context

                                  );
                                }

                              },
                              child: Obx(()=> businessController.isLoading.value
                                  ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppTheme.white,
                                ),
                              )
                                  : const Text('Register'),
                              ),
                            ),
                          ),
                        ),
                         const SizedBox(height: 16),
                        // const SizedBox(height: 16),
                        // const Center(
                        //   child: Text(
                        //     'കാസർഗോഡ് കാരുടെ\\nസ്വന്തം ഒരു കൂട്ടായ്മ\\nആപ്ലികേഷൻ സ്വാഗതം',
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       color: AppTheme.textGray,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}