import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PartsArticle extends StatefulWidget {
  const PartsArticle({super.key});

  @override
  State<PartsArticle> createState() => _PartsArticleState();
}

class _PartsArticleState extends State<PartsArticle> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Parts and Articles' , style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold, color: Colors.white
        ),),
      ),





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
                    child: ListTile(
                      title: Text('head $index', style: GoogleFonts.poppins(color: Colors.white),),
                      subtitle:Text('subtittle $index', style: GoogleFonts.poppins(color: Colors.white),),
                    ),
                  );
                })
              );
            },

            child: Container(
              height: 5.h, width: 20.w,
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
          Padding(
            padding: const EdgeInsets.only(left :10.0, right: 10.0 , bottom: 10.0),

            child: Container(
                height: 7.h, width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xF0811716)
                    // gradient: const LinearGradient(
                    //   begin: Alignment.bottomCenter,
                    //   end: Alignment.topCenter,
                    //   colors: [
                    //     Color(0xF06E1112),
                    //     Color(0xF0961C19),
                    //   ],
                    // )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    ),
                    Text('PART'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white)),
                    )
                  ],
                ),
              ),
          ),
        ],
      )
    );
  }
}
