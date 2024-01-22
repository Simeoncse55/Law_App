import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'CivilLawPages/arrangement_sec.dart';
import 'CivilLawPages/first_shedule.dart';
import 'CivilLawPages/rules.dart';

class CivilPage extends StatefulWidget {
  const CivilPage({super.key});

  @override
  State<CivilPage> createState() => _CivilPageState();
}

class _CivilPageState extends State<CivilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          children: [
            Text('Civil Laws' , style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
            Text(""" (CPC, 1908)""" , style: GoogleFonts.poppins(color: Colors.white,),),
          ],
        ),),

      body: ListView(
        children: [

        Padding(
          padding: const EdgeInsets.all(10.0),

          child: InkWell(
            onTap: (){
              Get.to(ArrangementSection() , transition: Transition.rightToLeftWithFade,);
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
                      child: Text('Arrangement of Sections' , style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500 , fontSize: 15
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
        ),



          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                Get.to(FirstSchedule() , transition: Transition.rightToLeftWithFade,);
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
                      child: Text('The Fisrt Schedule (Orders)' , style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500 , fontSize: 15
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
          ),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                Get.to(Rules() , transition: Transition.rightToLeftWithFade,);
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
                      child: Text('Rules' , style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500 , fontSize: 15
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
          ),


        ],
      ),
    );
  }
}
