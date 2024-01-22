import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'ArrangementContent/arrangementContent.dart';

class ArrangementSection extends StatefulWidget {
  const ArrangementSection({super.key});

  @override
  State<ArrangementSection> createState() => _ArrangementSectionState();
}

class _ArrangementSectionState extends State<ArrangementSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Arrangement of Sections' ,style: GoogleFonts.poppins(fontWeight: FontWeight.bold , color: Colors.white),),),


      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context , index){

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: (){
                  Get.to(ArrangrmentSection(),transition: Transition.rightToLeftWithFade);
                },
                child: Container(
                  height: 8.h, width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xF06E1112)

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('PART' , style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500 , fontSize: 20
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Image.asset('images/arrowWhite.png' , height: 4.h,),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),

    );
  }
}
