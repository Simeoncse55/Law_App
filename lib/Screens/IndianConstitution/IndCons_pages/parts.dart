import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:numerus/numerus.dart';
import 'package:law_code/Screens/IndianConstitution/IndCons_pages/parts_articles_page.dart';
import 'package:law_code/Models/LocalModels/part_and_article_model.dart';
class Parts extends StatefulWidget {
  const Parts({super.key});

  @override
  State<Parts> createState() => _PartsState();
}

class _PartsState extends State<Parts> {
  var num;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text('Parts and Articles' , style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
      ),


      body: ListView.builder(
          itemCount: partsArticles.length,
          itemBuilder: (context , index){
            PartsModel pm =  partsArticles[index];


            num = index;


         return Padding(
           padding: const EdgeInsets.all(10.0),
           child: InkWell(
             onTap: (){
               Get.to(PartsArticle(partsModel :pm) , transition: Transition.rightToLeftWithFade , arguments: index);
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
                     child: Text('PART ${(index+1).toRomanNumeralString()}' , style: GoogleFonts.poppins(
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
