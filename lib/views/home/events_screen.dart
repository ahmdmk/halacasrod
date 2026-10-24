import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala_casrod_app/common_controller/event_controller.dart';
import 'package:intl/intl.dart';
import '../../utils/app_theme.dart';
import '../../utils/launch_url.dart';

class EventsScreen extends StatefulWidget {
   EventsScreen({super.key,this.id});

  String ? id;

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {


  final controller = Get.put(UpComingEventController());

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((time){
      controller.getEventDetail(id:widget.id);
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color(0xffE3F0FE),

      child: Obx(()=>controller.isLoading.value ?
          Center(
            child: const CircularProgressIndicator(color: AppTheme.primaryBlue,
             strokeWidth: 1,
            ),
          )
      : Scaffold(
          backgroundColor: Color(0xffE3F0FE),
          appBar: AppBar(
            backgroundColor: const Color(0xFF1E3A8A),
            title:  Text("Event", style: TextStyle(
              color: Colors.white
            ),),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .45,
                  decoration:  BoxDecoration(image: DecorationImage(image: NetworkImage(
                      controller.eventDetails?.data?.imageUrl ?? ""
                  ),
                   fit: BoxFit.cover
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text("Event Details",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                ),

                const SizedBox(
                  height: 20,
                ),

                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Event:${controller.eventDetails?.data?.title ?? "-"}",)),


                const SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(controller.eventDetails?.data?.description ?? ""),
                ),

                const SizedBox(height: 30),

                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: (){
                      urlLaunch("https://www.google.com/maps?q=25.258707,55.410992");
                    },
                    child: Row(
                      children: [
                        Container(decoration:  BoxDecoration(
                            color: const Color(0xffD9D9D9),
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
                              DateFormat('EEEE').format(DateTime.parse(controller.eventDetails?.data?.startDatetime ?? "")),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ), Text(
                              DateFormat('MMMM d, y').format(DateTime.parse(controller.eventDetails?.data?.startDatetime ?? "")),
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


                const SizedBox(height: 20,),

                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: (){
                      urlLaunch("https://www.google.com/maps?q=25.258707,55.410992");
                    },
                    child: Row(
                      children: [
                        Container(decoration:  BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(4)
                        ),

                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Icon(Icons.location_on)),
                        ),

                        const SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.eventDetails?.data?.location ?? "",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ), Text(
                              'View on map',
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


                const SizedBox(height: 20,),


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

                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: (){
                      urlLaunch("https://www.smartflixtech.com/hala/hala-casrod.mp4");
                    },
                    child: Row(
                      children: [
                        Container(decoration:  BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(4)
                        ),

                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset("assets/images/video.png")),
                        ),

                        const SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Watch Video",
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

                const SizedBox(height: 20,),


              ],
            ),
          )
        ),
      ),
    );
  }
}