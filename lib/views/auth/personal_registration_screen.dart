import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala_casrod_app/common_controller/member_controller.dart';
import 'package:hala_casrod_app/utils/validation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../app_constant/app_images.dart';
import '../../utils/app_theme.dart';
import '../../viewmodels/auth_viewmodel.dart';
import '../../models/member_registration.dart';
import '../../services/providers.dart';

class PersonalRegistrationScreen extends HookConsumerWidget {
   PersonalRegistrationScreen({super.key});

  final memberController = Get.put(MemberController());
  final formKey = GlobalKey<FormState>();
   var selectedOption = "Yes".obs; // reactive string


   final List<String> countryCodes = [
     '+971', // UAE
     '+966', // Saudi Arabia
     '+965', // Kuwait
     '+974', // Qatar
     '+973', // Bahrain
     '+968', // Oman
     '+91',  // India
   ];

   RxString selectedCode = '+971'.obs;
   RxString selectedCodeForWhatsApp = '+971'.obs;


   @override
  Widget build(BuildContext context, WidgetRef ref) {

    // final nameController = useTextEditingController();
    // final professionController = useTextEditingController();
    // final mobileController = useTextEditingController();
    // final emailController = useTextEditingController();
    // final passwordController = useTextEditingController();
    // final companyController = useTextEditingController();
    // final locationController = useTextEditingController();
    // final whatsappController = useTextEditingController();
    // final additionalDetailsController = useTextEditingController();
    // final yearsInGulfController = useTextEditingController();

    // final attendingEvent = useState<bool?>(null);

    // final selectedDistrict = useState<String>('Kasaragod');
    // final selectedPanchayat = useState<String>('Other');
    // final selectedMobileCountryCode = useState<String>('+971');
    // final selectedWhatsappCountryCode = useState<String>('+971');
    //
    // final authState = ref.watch(authViewModelProvider);
    // final authViewModel = ref.read(authViewModelProvider.notifier);

    useEffect(() {
      memberController.nameController.clear();
      memberController.professionController.clear();
      memberController.mobileNumberController.clear();
      memberController.howManYearOfGulf.clear();
      memberController.nativePlace.clear();
      memberController.companyName.clear();
      memberController.currentLocation.clear();
      memberController.whatsAppNumber.clear();
      memberController.email.clear();
      memberController.countryOfResident.clear();

      return null;
    }, []);

     final selectedCountry = useState<String>('UAE');
     final selectedNativeDistrict = useState<String>('Kasaragod');
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xff0FF1E40AF),
        ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  // const SizedBox(height: 24,),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 12),
                  //   child: Align(
                  //     alignment: Alignment.bottomLeft,
                  //     child: CachedNetworkImage(
                  //       imageUrl: "https://www.smartflixtech.com/hala/logo.png",
                  //       fit: BoxFit.contain,
                  //       height: MediaQuery.of(context).size.width * .4,
                  //       width: MediaQuery.of(context).size.width * .4,
                  //       placeholder: (context, url) => const CircularProgressIndicator(),
                  //       errorWidget: (context, url, error) => const Icon(Icons.error),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 24),
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            Image.asset(AppImages.profile,
                             height: 35,
                             width: 35,
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              'Personal\nRegistration',
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                color: AppTheme.textDark,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Row(
                        //   children: [
                        //     Container(
                        //       padding: EdgeInsets.all(12),
                        //       decoration: BoxDecoration(
                        //         color: Color(0xffD9D9D9),
                        //         borderRadius: BorderRadius.circular(8)
                        //       ),
                        //       child: Icon(Icons.add,
                        //        color: Colors.black,
                        //         weight: 50.0,
                        //       ),
                        //     ),
                        //     const SizedBox(width: 5,),
                        //     const Text("Add Photo",
                        //      style: TextStyle(
                        //        color: Colors.black
                        //      ),
                        //     )
                        //   ],
                        // ),

                        const SizedBox(height: 16),
                        TextFormField(
                          controller: memberController.nameController,
                          validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),
                          decoration:  const InputDecoration(
                              hintText: 'Your Name',
                              fillColor: Colors.white,
                              filled: true
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: memberController.professionController,
                          // validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),
                          decoration: const InputDecoration(
                            hintText: 'Profession (Eg : Salesman, Chef)',
                              fillColor: Colors.white,
                              filled: true
                          ),
                        ),
                        const SizedBox(height: 16),

              Row(
                children: [
                  // Dropdown for country code
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Obx(()=> DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedCode.value,
                          items: countryCodes.map((code) {
                            return DropdownMenuItem<String>(
                              value: code,
                              child: Text(
                                code,
                                style: const TextStyle(fontSize: 14),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            selectedCode.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Phone number textfield
                  Expanded(
                     child:   TextFormField(
                      controller: memberController.mobileNumberController,
                      validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),
                      decoration:  const InputDecoration(
                          hintText: 'Mobile Number',
                          fillColor: Colors.white,
                          filled: true
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),


                        const SizedBox(height: 16),
                        DropdownButtonFormField<String>(
                          value: selectedCountry.value,
                          decoration: const InputDecoration(
                              hintText: 'Country Of Resident Eg : UAE',
                              filled: true,
                              fillColor: Colors.white
                          ),
                          items: ['UAE', 'Saudi Arabia', 'Kuwait', 'Qatar', 'Bahrain', 'Oman', 'Other']
                              .map((country) => DropdownMenuItem(
                            value: country,
                            child: Text(country,
                              style: TextStyle(fontSize: 14),
                            ),
                          ))
                              .toList(),
                          onChanged: (value) => selectedCountry.value = value!,
                        ),
                        const SizedBox(height: 16),


                        TextFormField(
                          controller: memberController.howManYearOfGulf,
                       //   validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),

                          decoration: const InputDecoration(
                              hintText: 'How many Years in Gulf',
                              fillColor: Colors.white,
                              filled: true,


                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16),
                        DropdownButtonFormField<String>(
                          value: selectedNativeDistrict.value,
                          decoration: const InputDecoration(
                              hintText: 'Country Of Resident Eg : UAE',
                              filled: true,
                              fillColor: Colors.white
                          ),
                          items: ["Kasaragod", "Kannur", 'Wayanad', 'Kozhikode', "Malappuram", 'Palakkad', 'Thrissur', 'Ernakulam', 'Idukki', 'Kottayam', 'Alappuzha', 'Pathanamthitta', 'Kollam', 'Thiruvananthapuram']
                              .map((country) => DropdownMenuItem(
                            value: country,
                            child: Text(country,
                             style: TextStyle(fontSize: 14),
                            ),
                          ))
                              .toList(),
                          onChanged: (value) => selectedNativeDistrict.value = value!,
                        ),


                        const SizedBox(height: 16),
                        Text("Addditional Details",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       flex: 2,
                        //       child: DropdownButtonFormField<String>(
                        //         value: selectedMobileCountryCode.value,
                        //         decoration: const InputDecoration(hintText: 'Code'),
                        //         items: ['+971', '+966', '+965', '+974', '+973', '+968', '+91', 'Other']
                        //             .map((code) => DropdownMenuItem(
                        //                   value: code,
                        //                   child: Text(code),
                        //                 ))
                        //             .toList(),
                        //         onChanged: (value) => selectedMobileCountryCode.value = value!,
                        //       ),
                        //     ),
                        //     const SizedBox(width: 8),
                        //     Expanded(
                        //       flex: 5,
                        //       child: TextFormField(
                        //         controller: mobileController,
                        //         decoration: const InputDecoration(hintText: 'Mobile Number'),
                        //         keyboardType: TextInputType.phone,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: memberController.companyName,
                         // validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),

                          decoration: const InputDecoration(hintText: 'Company Name',
                              fillColor: Colors.white,
                              filled: true
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: memberController.currentLocation,
                         // validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),

                          decoration: const InputDecoration(hintText: 'Current Location (Eg: Sharjah) ',
                              fillColor: Colors.white,
                              filled: true
                          ),
                        ),
                        const SizedBox(height: 16),

                        Row(
                          children: [
                            // Dropdown for country code
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              child: Obx(()=> DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedCode.value,
                                  items: countryCodes.map((code) {
                                    return DropdownMenuItem<String>(
                                      value: code,
                                      child: Text(
                                        code,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    selectedCode.value = value!;
                                  },
                                ),
                              ),
                              ),
                            ),
                            const SizedBox(width: 10),

                            // Phone number textfield
                            Expanded(
                              child:   TextFormField(
                                controller: memberController.mobileNumberController,
                                validator: (value)=>Validation.emptyNullValidator(value,errorMessage: "required"),
                                decoration:  const InputDecoration(
                                    hintText: 'Whatsapp Number',
                                    fillColor: Colors.white,
                                    filled: true
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // DropdownButtonFormField<String>(
                        //   value: selectedDistrict.value,
                        //   decoration: const InputDecoration(
                        //     hintText: 'Native Place (Eg : Kasaragod, Uppala)',
                        //   ),
                        //   items: ['Kasaragod', 'Kannur', 'Wayanad', 'Kozhikode', 'Malappuram', 'Palakkad', 'Thrissur', 'Ernakulam', 'Idukki', 'Kottayam', 'Alappuzha', 'Pathanamthitta', 'Kollam', 'Thiruvananthapuram']
                        //       .map((district) => DropdownMenuItem(
                        //             value: district,
                        //             child: Text(district),
                        //           ))
                        //       .toList(),
                        //   onChanged: (value) {
                        //     selectedDistrict.value = value!;
                        //     // Reset panchayat to 'Other' when district changes
                        //     if (value != 'Kasaragod') {
                        //       selectedPanchayat.value = 'Other';
                        //     }
                        //   },
                        // ),
                        // const SizedBox(height: 16),
                        // DropdownButtonFormField<String>(
                        //   value: selectedPanchayat.value,
                        //   decoration: const InputDecoration(
                        //     hintText: 'Native Panchayat (For Kasaragod District)',
                        //   ),
                        //   items: selectedDistrict.value == 'Kasaragod'
                        //       ? ['Ajanur', 'Badiadka', 'Balal', 'Bedadka', 'Belloor', 'Chemnad', 'Chengla', 'Cheruvathur', 'Delampady', 'East Eleri', 'Enmakaje', 'Kallar', 'Karadka', 'Kodom Belur', 'Kayyur Cheemeni', 'Kinanoor Karinthalam', 'Kumbdaje', 'Kumbala', 'Kuttikol', 'Madhur', 'Madikai', 'Mangalpady', 'Manjeshwar', 'Meenja', 'Mogral Puthur', 'Muliyar', 'Padne', 'Paivalike', 'Pallikkare', 'Panathady', 'Pilicode', 'Pullur Periya', 'Puthige', 'Trikaripur', 'Udma', 'Valiyaparamba', 'Vorkady', 'West Eleri', 'Other']
                        //           .map((panchayat) => DropdownMenuItem(
                        //                 value: panchayat,
                        //                 child: Text(panchayat),
                        //               ))
                        //           .toList()
                        //       : [const DropdownMenuItem(value: 'Other', child: Text('Other'))],
                        //   onChanged: (value) => selectedPanchayat.value = value!,
                        // ),
                        // const SizedBox(height: 24),
                        // const Text(
                        //   'Additional Details',
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w600,
                        //     color: AppTheme.textDark,
                        //   ),
                        // ),
                        // const SizedBox(height: 16),
                        TextFormField(
                          controller: memberController.email,
                          decoration: const InputDecoration(hintText: 'Email',
                              fillColor: Colors.white,
                              filled: true
                          ),
                        ),

                        const SizedBox(height: 16),

                        //const SizedBox(height: 24),
                        const Text(
                          'Attending Hala Casrod Event?*',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textDark,
                          ),
                        ),
                        const SizedBox(height: 8),
              Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio<String>(
                      value: "Yes",
                      groupValue: selectedOption.value,
                      onChanged: (value) {
                        selectedOption.value = value!;
                      },
                    ),
                    const Text("Yes"),

                    Radio<String>(
                      value: "No",
                      groupValue: selectedOption.value,
                      onChanged: (value) {
                        selectedOption.value = value!;
                      },
                    ),
                    const Text("No"),

                    Radio<String>(
                      value: "Maybe",
                      groupValue: selectedOption.value,
                      onChanged: (value) {
                        selectedOption.value = value!;
                      },
                    ),
                    const Text("Maybe"),
                  ],
                ),
              ),



                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: memberController.isLoading.value == true ?
                                  null  :
                                (){
                              if(formKey.currentState?.validate() ?? false){
                                memberController.memberRegistration(
                                  value: selectedOption.value,
                                  mobileCoCode: selectedCode.value,
                                  whatsAppCode: selectedCode.value,
                                  countryOfResidence: selectedCountry.value,
                                  nativeDistrict: selectedNativeDistrict.value,
                                  context: context
                                );
                              }

                            },
                            child: Obx(()=> memberController.isLoading.value
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
                        const SizedBox(height: 16),

                      ],
                    ),
                  ),

           ]
              ),
          ),


    ))));
  }
}