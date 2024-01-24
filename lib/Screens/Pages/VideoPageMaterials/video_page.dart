import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_content_bar.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_controller.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_model.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_side_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

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



      body: PageView.builder(

          scrollDirection: Axis.vertical,
          itemCount: videoDatas.length,
          itemBuilder: (context, index) {

            var height = MediaQuery.of(context).size.height;

            return Container(

              child: Center(
                child: Stack(

                  children: [

             Videos(url:  videoDatas[index]),

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


class Videos extends StatefulWidget {
  const Videos({ required this.url ,super.key});

  final Reel url;

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {


  late VideoPlayerController _videoController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.url.videos.toString()))
      ..initialize().then((_){

        _videoController.play();
        _videoController.setLooping(true);
        setState(() {

        });

      });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 750,
          width: double.infinity,


          child: _videoController.value.isInitialized ?

          AspectRatio(
            aspectRatio: _videoController.value.aspectRatio,
            child: VideoPlayer(_videoController),
          ):
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset('images/loading-loading-forever.gif' , height: 50,)
                  ),
                ],
              )
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }
}

