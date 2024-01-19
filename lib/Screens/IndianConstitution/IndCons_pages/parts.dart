import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Parts extends StatefulWidget {
  const Parts({super.key});

  @override
  State<Parts> createState() => _PartsState();
}

class _PartsState extends State<Parts> {
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
          itemCount: 10,
          itemBuilder: (context , index){
         return Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             color: Colors.blue,
             height: 10.h, width: 100.w,

             child: Row(
               children: [
                 Text('Part 1 '),
               ],
             ),
           ),
         );
      }),

    );
  }
}
