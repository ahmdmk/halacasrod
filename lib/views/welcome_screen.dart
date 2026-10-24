import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:hala_casrod_app/app_constant/app_images.dart';
import 'package:hala_casrod_app/common_controller/event_controller.dart';
import 'package:hala_casrod_app/common_controller/sponsor_controller.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/app_theme.dart';
import '../utils/launch_url.dart';
import '../widgets/sponsor_carousel.dart';
import 'home/events_screen.dart';
import 'home/videoplayer_screen.dart';

class WelcomeScreen extends HookWidget {
   WelcomeScreen({super.key});


  final List<String> images = [
    AppImages.slider,
    AppImages.slider,
    AppImages.slider,
    AppImages.slider,
  ];

  final controller = Get.put(SponsorController());
 final upComingController  = Get.put(UpComingEventController());


  @override
  Widget build(BuildContext context) {

    final controlleruse = useScrollController();



    useEffect((){


      double scrollSpeed = 1; // pixels per frame
      bool isMounted = true;

      WidgetsBinding.instance.addPostFrameCallback((time){
        controller.fetchAllSponsorList();
        upComingController.getUpComingEvent();
        controller.fetchAllSliderList();
      });

       autoScroll() async {
        while (isMounted) {
          if (!controlleruse.hasClients) {
            await Future.delayed(const Duration(milliseconds: 16));
            continue;
          }

          final maxScroll = controlleruse.position.maxScrollExtent;
          final current = controlleruse.offset;

          // Reset to start if end reached
          if (current >= maxScroll) {
             controlleruse.jumpTo(0.0);
          } else {
            await controlleruse.animateTo(
              current + scrollSpeed,
              duration: const Duration(milliseconds: 16),
              curve: Curves.linear,
            );
          }
        }
      }

      autoScroll();

      return () {
        isMounted = false;
      };

    },[ [controlleruse]]);





    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          color: Color(0xffE3F0FE)
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [


                Container(

                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppTheme.primaryBlue,
                        image: DecorationImage(image: AssetImage(AppImages.splashLogo),
                            fit: BoxFit.fill
                        )
                    )),

              // CachedNetworkImage(
              //   imageUrl: "https://www.smartflixtech.com/hala/logo.png",
              //   fit: BoxFit.contain,
              //   imageBuilder: (context,imageProvider){
              //     return Container(
              //
              //       height: MediaQuery.of(context).size.width,
              //       width: MediaQuery.of(context).size.width,
              //       decoration: BoxDecoration(
              //           color: AppTheme.primaryBlue,
              //           image: DecorationImage(image: imageProvider,
              //          fit: BoxFit.fill
              //         )
              //       ));
              //   },
              //   placeholder: (context, url) => SizedBox(
              //     width: 30,
              //     height: 30,
              //     child: const CircularProgressIndicator(
              //
              //     ),
              //   ),
              //   errorWidget: (context, url, error) => const Icon(Icons.error),
              // ),

                const SizedBox(height: 20),
                // Logo and header
                // const Text(
                //   'Hala Casrod',
                //   style: TextStyle(
                //     fontSize: 28,
                //     fontWeight: FontWeight.bold,
                //     color: AppTheme.white,
                //   ),
                // ),
                // const SizedBox(height: 8),
                // const Text(
                //   'GRAND FEST - 25',
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: AppTheme.yellow,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                // const SizedBox(height: 20),
                // Member count
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       '1000',
                //       style: TextStyle(
                //         fontSize: 32,
                //         fontWeight: FontWeight.bold,
                //         color: AppTheme.white,
                //       ),
                //     ),
                //     SizedBox(width: 8),
                //     Text(
                //       'Members',
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: AppTheme.white,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 40),
                // Registration cards
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 24),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: buildRegistrationCard(
                //           context,
                //           'Personal\nRegistration',
                //           // Icons.person,
                //           image: AppImages.profile,
                //           () => context.push('/register/personal'),
                //         ),
                //       ),
                //       const SizedBox(width: 16),
                //       Expanded(
                //         child: buildRegistrationCard(
                //           context,
                //           'Business\nRegistration',
                //           // Icons.business,
                //           image: AppImages.business,
                //           () => context.push('/login'),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(height: 20),
                // Sponsors section


              Obx(()=>
              controller.isSlider.value ?
              CarouselSlider.builder(
                itemCount: 3, // number of shimmer placeholders
                itemBuilder: (context, index, realIndex) {
                  return Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 180,
                  viewportFraction: 0.5,
                  autoPlay: false,
                ),
              ):
              CarouselSlider(
                options: CarouselOptions(
                  height: 180, // adjust height as needed
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                ),
                items: controller.sliderModel?.data?.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        // padding: const EdgeInsets.symmetric(
                        //     horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            imagePath.logoUrl ?? "",
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),),
                const SizedBox(height: 20),


                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child:  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Our Sponsors',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // SizedBox(
                //   height: 80,
                //   child: ListView.builder(
                //     controller: controlleruse,
                //     scrollDirection: Axis.horizontal,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemCount: controller.sponsorModel?.data?.length ?? 0, // creates endless illusion
                //     itemBuilder: (_, index) {
                //       final image = controller.sponsorModel?.data;
                //       return Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(16),
                //           child: Image.network(
                //             image ?? "",
                //             width: 300,
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
            Obx(()=>
            controller.isLoading.value ?
              CarouselSlider.builder(
                itemCount: 3, // number of shimmer placeholders
                itemBuilder: (context, index, realIndex) {
                  return Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 90,
                  viewportFraction: 0.5,
                  autoPlay: false,
                ),
              ):
              CarouselSlider(
                options: CarouselOptions(
                  height: 90, // adjust height as needed
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.5,
                    autoPlayCurve: Curves.linear,
                  scrollDirection: Axis.horizontal,

                ),
                items: controller.sponsorModel?.data?.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return imagePath.logoUrl == "" || imagePath.logoUrl == null ?
                      const SizedBox():
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        // padding: const EdgeInsets.symmetric(
                        //     horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),

                        ),
                       child:  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              imagePath.logoUrl ?? "",
                              fit: BoxFit.fill,
                            ),

                                                ),
                        ));
                    },
                  );
                }).toList(),
              ),),


                SizedBox(height: 30),
                // Upcoming Events section
               upComingController.upComingEventModel?.data?.length == 0 ?
               const SizedBox():
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Upcoming Events',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                Obx(()=>
                upComingController.isLoading.value ? _buildShimmerCard():
                upComingController.upComingEventModel?.data?.length == 0 ?
                    SizedBox():
                SizedBox(
                  height: MediaQuery.of(context).size.height *  .58,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: upComingController.upComingEventModel?.data?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      var event = upComingController.upComingEventModel?.data?[index];
                      return InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EventsScreen(
                          id: event?.id ?? "",
                        ))),
                        child: _buildEventCard(
                          image: event?.imageUrl ?? "",
                          day: DateFormat('EEEE').format(DateTime.parse(event?.startDatetime ?? "")),
                          date: DateFormat('MMMM d, y').format(DateTime.parse(event?.startDatetime ?? "")),
                          venue:event?.location?? "",
                          context: context
                        ),
                      );
                    },

                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 15);

                    },
                  ),
                )),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        urlLaunch("https://wa.me/+971543297986");
      },
      child: Image.asset("assets/images/whatsAppIcon.png"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  Widget buildRegistrationCard(
    BuildContext context,
    String title,
    // IconData icon,
    VoidCallback onTap,
    {image}
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      hoverColor: AppTheme.accentRed.withOpacity(0.05),
      splashColor: AppTheme.accentRed.withOpacity(0.1),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: AppTheme.cardShadow,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 15,
                color: AppTheme.textDark,
                fontWeight: FontWeight.bold
              ),
            ),

            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(Icons.arrow_forward_ios,
                 size: 15
                ),
              ),
            )

            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: Image.asset(image,
            //    height: 38,
            //     width: 38,
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard({image,date,venue,
    day,
    context}) {
    return Container(
      width: MediaQuery.of(context).size.width-30,
      // height: 300,
       margin: const EdgeInsets.symmetric(horizontal:15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
        // gradient: const LinearGradient(
        //   colors: [Color(0xFF7C2D12), Color(0xFF991B1B)],
        // ),
      ),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width:  MediaQuery.of(context).size.width,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                    topLeft:  Radius.circular(30)
                ),
                image: DecorationImage(image: NetworkImage(image),
               fit:  BoxFit.cover,
              )
            ),
          ),


          const SizedBox(height: 30,),

          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){
                //urlLaunch("https://www.google.com/maps?q=25.258707,55.410992");
              },
              child: Row(
                children: [
                  Container(decoration:  BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(4)
                  ),

                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset("assets/images/calendar.png")),
                  ),

                  const SizedBox(width: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        day,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ), Text(
                        date,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 20),
      //       child: Text(
      //         'Date',
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 15,
      //         ),
      //       ),
      //     ),
      //
      //    Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 20),
      //   child: Text(
      //     date,
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 15,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),


         // const SizedBox(height: 20,),

          //  Padding(
          //   padding:  const EdgeInsets.symmetric(horizontal: 20),
          //   child: InkWell(
          //     onTap: (){
          //       urlLaunch("https://www.google.com/maps?q=25.258707,55.410992");
          //     },
          //     child: Row(
          //       children: [
          //         Container(decoration:  BoxDecoration(
          //           color: Color(0xffD9D9D9),
          //           borderRadius: BorderRadius.circular(4)
          //         ),
          //
          //          child: Padding(
          //              padding: const EdgeInsets.all(8),
          //              child: Icon(Icons.location_on)),
          //         ),
          //
          //         const SizedBox(width: 10,),
          //
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               venue,
          //               style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 15,
          //                 fontWeight: FontWeight.bold
          //               ),
          //             ), Text(
          //               'View on map',
          //               style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 15,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),


         // const SizedBox(height: 20,),


          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 18),
          //   child: InkWell(
          //     onTap:(){
          //       urlLaunch("https://www.google.com/maps?q=25.258707,55.410992");
          //     },
          //     child: Row(
          //
          //       children: [
          //         Icon(Icons.location_on,
          //
          //         ),
          //         SizedBox(width: 5,),
          //
          //         Text("Location",
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 15,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding:  const EdgeInsets.symmetric(horizontal: 20),
          //   child: InkWell(
          //     onTap: (){
          //       urlLaunch("https://www.smartflixtech.com/hala/hala-casrod.mp4");
          //     },
          //     child: Row(
          //       children: [
          //         Container(decoration:  BoxDecoration(
          //             color: Color(0xffD9D9D9),
          //             borderRadius: BorderRadius.circular(4)
          //         ),
          //
          //           child: Padding(
          //               padding: const EdgeInsets.all(8),
          //               child: Image.asset("assets/images/video.png")),
          //         ),
          //
          //         const SizedBox(width: 10,),
          //
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               "Watch Video",
          //               style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 15,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          const SizedBox(height: 20,),




        ],
      )


    );
  }


   //
   Widget _buildShimmerCard() {
     return Shimmer.fromColors(
       baseColor: Colors.grey.shade300,
       highlightColor: Colors.grey.shade100,
       child: Container(
         width: double.infinity,
         margin: const EdgeInsets.symmetric(horizontal: 20),
         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(24),
           color: Colors.white,
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(height: 150, color: Colors.white), // Image placeholder
             const SizedBox(height: 10),
             Container(height: 15, margin: const EdgeInsets.symmetric(horizontal: 20), color: Colors.white), // Date label
             const SizedBox(height: 5),
             Container(height: 15, width: 120, margin: const EdgeInsets.symmetric(horizontal: 20), color: Colors.white), // Date value
             const SizedBox(height: 20),
             Container(height: 15, margin: const EdgeInsets.symmetric(horizontal: 20), color: Colors.white), // Venue label
             const SizedBox(height: 5),
             Container(height: 15, width: 150, margin: const EdgeInsets.symmetric(horizontal: 20), color: Colors.white), // Venue value
           ],
         ),
       ),
     );
   }
}
