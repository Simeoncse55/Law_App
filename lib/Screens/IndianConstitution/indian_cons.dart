import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_code/Screens/IndianConstitution/IndCons_pages/shedules.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:law_code/Models/LocalModels/ind_cons_txts.dart';
import 'package:law_code/Screens/IndianConstitution/indian_cons.dart';
import 'IndCons_pages/preamble_cons.dart';
import 'package:law_code/Screens/IndianConstitution/IndCons_pages/parts.dart';

class IndianCons extends StatefulWidget {
  const IndianCons({Key? key}) : super(key: key);

  @override
  State<IndianCons> createState() => _IndianConsState();
}

class _IndianConsState extends State<IndianCons> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
  appBar: AppBar(
    leading: InkWell(
      onTap: (){
        Get.back();
      },
        child: const Icon(Icons.arrow_back_ios, color: Colors.white, )),
    centerTitle: true,
    backgroundColor: Colors.black,
    title: Text('The Indian Constitution', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
  ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),


        child: Stack(

          children: [
        // white container background
          Container(
              height: double.infinity,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),

              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context,index){

                    IndConsDetails ic = details[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(ic.headerImg.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(ic.detailsTxt.toString(), style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                        ),
                        SizedBox(
                          height: 30.h,
                        )
                      ],
                    );

                  }),


            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // BUTTON 1
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                   children: [
                     InkWell(
                       onTap: (){
                         Get.to(const Preamble_Cons(),
                         transition: Transition.rightToLeftWithFade
                         );
                       },
                       child: Container(
                         height: 6.h,
                         width: 100.w,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             gradient: const LinearGradient(
                               begin: Alignment.bottomCenter,
                               end: Alignment.topCenter,
                               colors: [
                                 Color(0xF06E1112),
                                 Color(0xF0961C19),
                               ],
                             )
                         ),
                         child: Stack(
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Center(child: Text('Preamble of the Constitution' , style: GoogleFonts.poppins( fontSize: 16, color: Colors.white),)),
                               ],
                             ),
                             Container(
                                 alignment: const Alignment(1,0),
                                 child: Padding(
                                   padding: const EdgeInsets.only(right: 15),
                                   child: Image.asset('images/arrowWhite.png', height: 3.5.h,),
                                 )
                             )
                           ],

                         ),

                       ),
                     ),

                   ],
                  ),
                ),

                // BUTTON 2
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(Shedules_Cons(),
                          transition: Transition.rightToLeftWithFade);
                        },
                        child: Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color(0xF06E1112),
                                  Color(0xF0961C19),
                                ],
                              )
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Text('Schedules of the Constitution' , style: GoogleFonts.poppins( fontSize: 16, color: Colors.white),)),
                                ],
                              ),
                              Container(
                                  alignment: const Alignment(1,0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image.asset('images/arrowWhite.png', height: 3.5.h,),
                                  )
                              )
                            ],

                          ),

                        ),
                      ),

                    ],
                  ),
                ),

                // BUTTON 3
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap:(){
                  Get.to(Parts(),
                  transition: Transition.rightToLeftWithFade);
                },
                        child: Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color(0xF06E1112),
                                  Color(0xF0961C19),
                                ],
                              )
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Text('Preamble of the Constitution' , style: GoogleFonts.poppins( fontSize: 16, color: Colors.white),)),
                                ],
                              ),
                              Container(
                                  alignment: const Alignment(1,0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image.asset('images/arrowWhite.png', height: 3.5.h,),
                                  )
                              )
                            ],

                          ),

                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),

          ],


        ),
      ),

    );
  }
}
