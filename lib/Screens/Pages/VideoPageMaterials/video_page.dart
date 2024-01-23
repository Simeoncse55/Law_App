import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_content_bar.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_controller.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_model.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_side_bar.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});


  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Indian Law Videos', style: GoogleFonts.poppins(
            color: Colors.white, fontWeight: FontWeight.w500),),
      ),

      // Get X Video Controller

      // body: GetBuilder<VideoController>(
      //   init: VideoController(),
      //   assignId: true,
      //   builder: (controller) {
      //
      //     return Expanded(
      //       child: controller.chewieController!=null &&
      //           controller.chewieController!.videoPlayerController.value.isInitialized?
      //           Chewie(controller: controller.chewieController!):
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               CircularProgressIndicator(),
      //               SizedBox(height: 10,),
      //               Text('Loading..')
      //             ],
      //           )
      //
      //     );
      //   },
      // ),

      body: PageView.builder(

          scrollDirection: Axis.vertical,
          itemCount: videoDatas.length,
          itemBuilder: (context, index) {

            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage( videoDatas[index].img)
                  )

              ),

              child: Center(
                child: Stack(

                  children: [
                    Text('sdfg'),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment(0, -0.99),
                              end: Alignment(0, -0.55),
                              colors: [
                                Colors.black, Colors.transparent
                              ]
                          )
                      ),
                    ),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(flex: 8,
                                child: VideoContentBar(
                                  reel: videoDatas[index],)

                            ),

                            Flexible(
                                flex: 2,
                                child: VideoSideActionBar(
                                    reel: videoDatas[index])

                            ),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            );
          }
          ),


    );
  }
}
