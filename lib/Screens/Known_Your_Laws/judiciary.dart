
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JudciaryPage extends StatefulWidget {
  const JudciaryPage({super.key});

  @override
  State<JudciaryPage> createState() => _JudciaryPageState();
}

class _JudciaryPageState extends State<JudciaryPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Indian Judiciary System' , style: GoogleFonts.poppins(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),),
      
      
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('images/suprimecourt.png',height: 30.h,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('The Supreme Court of India' , style: GoogleFonts.poppins(color: Colors.white, ),),
            ),

            Container(
              width: 100.w,
              decoration: BoxDecoration(
                color: Color(0xFF811716),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text('The Supreme Court of India' , style: GoogleFonts.poppins(color: Colors.white),)),
              ),
            ),

            Icon(Icons.arrow_downward_rounded,color: Colors.white, size: 45,),



            Container(
              width: 100.w,
              decoration: BoxDecoration(
                  color: Color(0xFF811716),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text('The Supreme Court of India' , style: GoogleFonts.poppins(color: Colors.white),)),
              ),
            ),

            Icon(Icons.arrow_downward_rounded,color: Colors.white, size: 45,),



            Container(
              width: 100.w,
              decoration: BoxDecoration(
                  color: Color(0xFF811716),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text('The Supreme Court of India' , style: GoogleFonts.poppins(color: Colors.white),)),
              ),
            ),

            Icon(Icons.arrow_downward_rounded,color: Colors.white, size: 45,),


            Container(
              width: 100.w,
              decoration: BoxDecoration(
                  color: Color(0xFF811716),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text('The Supreme Court of India' , style: GoogleFonts.poppins(color: Colors.white),)),
              ),
            ),

          ],
        ),
      ),
      
    );
  }
}
