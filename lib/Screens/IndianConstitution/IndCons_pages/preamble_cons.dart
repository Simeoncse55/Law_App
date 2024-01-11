import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Models/LocalModels/preamble_cons_model.dart';


class Preamble_Cons extends StatefulWidget {
  const Preamble_Cons({Key? key}) : super(key: key);

  @override
  State<Preamble_Cons> createState() => _Preamble_ConsState();
}

class _Preamble_ConsState extends State<Preamble_Cons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.white, )),
        centerTitle: true,
        title: Text(
          'Preamble of the Constitution' ,
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: double.infinity,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          
          child: ListView.builder(
              itemCount: 1,
              itemBuilder:(context,index){
                PremConsModel pm = prem[index];
             return Padding(
               padding: const EdgeInsets.all(15.0),
               child: Column(
                 children: [
                  Image.asset(pm.img.toString(), height: 40.h,),
                   Text(pm.desc.toString())
                 ],
               ),
             );
          }),
        ),
      ),

    );
  }
}
