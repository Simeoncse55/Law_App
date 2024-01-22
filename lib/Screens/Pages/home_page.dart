import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:law_code/Models/LocalModels/law_local_models.dart';
import 'package:get/get.dart';
import 'package:law_code/Screens/IndianConstitution/indian_cons.dart';

import '../../Routes/route.dart';
import '../Known_Your_Laws/acts.dart';
import '../Known_Your_Laws/civil.dart';
import '../Known_Your_Laws/criminal.dart';
import '../Known_Your_Laws/judiciary.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String heloTxt = "Hi";
  String userEmail = "simeon@skyraan.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //  backgroundColor: Color(0xF0202020),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                heloTxt,
                style: GoogleFonts.poppins(fontSize: 15),
              ),
            ),
            Text(
              userEmail,
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.white60),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundColor: Colors.brown.shade100,
              child: Text('E', style: GoogleFonts.poppins(color: Colors.brown)),
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  Get.to(IndianCons(),
                      transition: Transition.rightToLeftWithFade);
                },
                child: Container(
                  height: 13.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xF06E1112),
                          Color(0xF0961C19),
                        ],
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Known about',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                            ),
                            Text(
                              """"The Indian Constitution" """,
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Container(
                            alignment: const Alignment(1, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Image.asset(
                                'images/arrowWhite.png',
                                height: 4.h,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                alignment: const Alignment(0, 0),
                color: Colors.transparent,
                height: 15.h,
                width: 100.w,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: const Color(0xF06E1112),
                            borderRadius: BorderRadius.circular(10)),
                        height: 20.h,
                        width: 20.h,
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Knowns your laws',
              style: GoogleFonts.poppins(color: Colors.white),
            ),
            Container(
              color: Colors.transparent,
              width: 100.w,
              height: 40.h,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    LawModels lm = laws[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 8, top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {
                            if (lm.route == Routes.judiciary) {
                              Get.to(JudciaryPage(), transition: Transition.rightToLeftWithFade);
                            }
                            if (lm.route == Routes.civil) {
                              Get.to(CivilPage(), transition: Transition.rightToLeftWithFade);
                            }
                            if (lm.route == Routes.criminal) {
                              Get.to(CriminalPage(), transition: Transition.rightToLeftWithFade);
                            }
                            if (lm.route == Routes.acts) {
                              Get.to(ActsPage(), transition: Transition.rightToLeftWithFade);
                            }
                          },
                          child: ListTile(
                            leading: Image.asset(lm.img.toString()),
                            title: Text(
                              lm.text.toString(),
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Image.asset(
                              lm.icons.toString(),
                              height: 4.h,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
