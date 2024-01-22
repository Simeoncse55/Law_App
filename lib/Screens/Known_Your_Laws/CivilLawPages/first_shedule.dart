import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'FirstSchdule_Content/first_schdule_content.dart';

class FirstSchedule extends StatefulWidget {
  const FirstSchedule({super.key});

  @override
  State<FirstSchedule> createState() => _FirstScheduleState();
}

class _FirstScheduleState extends State<FirstSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('The First Schedule (Orders)' , style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context , index){


            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: (){
               Get.to(FirstSchduleContent ());
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
