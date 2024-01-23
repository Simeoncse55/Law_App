import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController{
  
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  @override
  void onInit(){
    super.onInit();
    initializePlayer();
  }
  
  @override
  void onReady(){
    super.onReady();
  }
  
  @override
  void onClose(){
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializePlayer() async {
    
    videoPlayerController = VideoPlayerController.networkUrl("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4" as Uri);
    await Future.wait([videoPlayerController.initialize()]);
    chewieController= ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true, looping: true);
    update();

  }
  
}