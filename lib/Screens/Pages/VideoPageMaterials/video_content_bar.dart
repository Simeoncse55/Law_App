import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_code/Screens/Pages/VideoPageMaterials/video_model.dart';
import 'package:expandable_text/expandable_text.dart';

class VideoContentBar extends StatelessWidget {
  VideoContentBar({ required this.reel, super.key});
  final Reel reel;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 18.h, color: Colors.pink,
      child: Column(

        children: [
          ListTile(
            title: Text('${reel.videoTittle.toString()}', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20),),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ExpandableText(
                reel.videoContent.toString(),
                style: GoogleFonts.poppins(color: Colors.white),

                expandText: 'Read more',
                collapseText: 'show less',
                collapseOnTextTap: true,
                expandOnTextTap: true,
                maxLines: 3,
                linkColor: Colors.grey,
              ),
            )
          )
        ],
      ),
    );
  }
}
