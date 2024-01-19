import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_code/Models/LocalModels/schedule_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Shedules_Cons extends StatefulWidget {
  const Shedules_Cons({super.key});

  @override
  State<Shedules_Cons> createState() => _Shedules_ConsState();
}

class _Shedules_ConsState extends State<Shedules_Cons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text('Schedules of the Constitution' , style: GoogleFonts.poppins(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),


      body: ListView.builder(

          itemCount: schedule.length ,
          itemBuilder: (context , index){
            ScheduleModel sh = schedule[index];

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      // tittle container
                      Container(
                        height: 6.h,
                        // width: 300,
                        child: Center(child: Text(sh.tittle.toString() , style: GoogleFonts.poppins(
                          color: Colors.white , fontWeight: FontWeight.w500
                        ),)),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Color(0xF06E1112),
                        ),
                      ),


                      // description container ( white )
                      Container(
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 15, left: 10, right: 10),
                              child: Text(
                                // overflow: TextOverflow.visible,
                                sh.text.toString(),
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                ),
                              ),
                            )),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                      ),


                    ],
                  ),

                ),
              ),
            );
      }),
    );
  }
}
