import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_model.dart';
import 'package:like_button/like_button.dart';
class VideoSideActionBar extends StatefulWidget {
   VideoSideActionBar({required this.reel ,super.key});
 final Reel reel ;
  @override
  State<VideoSideActionBar> createState() => _VideoSideActionBarState();
}

class _VideoSideActionBarState extends State<VideoSideActionBar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 360,
      child: Center(
        child: Column(
          children: [
           // IconButton(onPressed: (){},
           //     icon: Icon(Icons.favorite_border_rounded,size: 40,color: Colors.white,)),
            LikeButton(
              size: 40,
             isLiked: false,
            ),
            SizedBox(height: 8,),
            Text('1.2M',style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),

            IconButton(onPressed: (){},
                icon: Icon(Icons.mode_comment_outlined,size: 40,color: Colors.white,)),
            SizedBox(height: 8,),
            Text('18',style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500)),
            SizedBox(height: 20,),

            IconButton(onPressed: (){},
                icon: Icon(Icons.share,size: 40,color: Colors.white,)),
            SizedBox(height: 20,),


            IconButton(onPressed: (){},
                icon: Icon(Icons.more_horiz_rounded,size: 40,color: Colors.white,)),

          ],
        ),
      ),
    );
  }
}
