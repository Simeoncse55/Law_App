import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArrangrmentSection extends StatefulWidget {
  const ArrangrmentSection({super.key});

  @override
  State<ArrangrmentSection> createState() => _ArrangrmentSectionState();
}

class _ArrangrmentSectionState extends State<ArrangrmentSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Arrangement of Sections' , style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold
          ),),
        ),


        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Container(
            height: 65.h, width: double.infinity,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
            ),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  // tittle text
                  child: Text( 'Tittle', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top : 8.0),
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.amber,
                        width: 88.w,
                        child: Padding(
                          // points text
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('Points' , style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),




        // bottom sheet
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // first container
            InkWell(
              onTap: (){

                Get.bottomSheet(
                    ListView.builder(
                        itemCount: 50,
                        itemBuilder: (context,index){

                          return Container(
                            color: Color(0xF0811716),
                            child: InkWell(

                              child: ListTile(
                                title: Text('head $index', style: GoogleFonts.poppins(color: Colors.white),),
                                subtitle:Text('subtittle $index', style: GoogleFonts.poppins(color: Colors.white),),
                              ),
                            ),
                          );
                        })
                );
              },

              // first container
              child: Container(
                height: 4.5.h, width: 20.w,
                decoration: BoxDecoration(
                    color: Color(0xF0811716),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100) , topRight: Radius.circular(100)
                    )
                ),
                child: Icon(Icons.keyboard_arrow_up_outlined, size: 40, color: Colors.white,),
              ),
            ),


            // second container
            Container(
              height: 7.h, width: double.infinity,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                  color: Color(0xF0811716)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: IconButton(onPressed: (){
                      // decrement index method

                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  ),
                  Text('num'),

                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: IconButton(onPressed: (){
                      //increment index method

                    }, icon: Icon(Icons.arrow_forward_ios,color: Colors.white)),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
