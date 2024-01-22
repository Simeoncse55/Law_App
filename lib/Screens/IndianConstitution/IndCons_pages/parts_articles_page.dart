import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:law_code/Models/LocalModels/part_and_article_model.dart';
class PartsArticle extends StatefulWidget {
  PartsArticle({ required this.partsModel, this.index=0, super.key});

  final PartsModel partsModel;
  final int index;

  @override
  State<PartsArticle> createState() => _PartsArticleState();
}

class _PartsArticleState extends State<PartsArticle> {
  @override
  Widget build(BuildContext context) {
    int currentIndex=0;

    @override
    void initState() {
      super.initState();
      // Add code after super
      currentIndex = widget.index;
      setState(() {});

    }
    void incrementIndex(){
      currentIndex++;
      setState(() {

      });
    }

    void decrementIndex(){
      currentIndex--;
      setState(() {

      });
    }

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Parts and Articles' , style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold, color: Colors.white
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
                 child: Text( widget.partsModel.tittle.toString(), style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),),
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
                         child: Text(widget.partsModel.points.toString() , style: GoogleFonts.poppins(
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
                      decrementIndex();
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  ),
                  Text('num'),

                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: IconButton(onPressed: (){
                      //increment index method
                      incrementIndex();


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
