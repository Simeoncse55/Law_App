import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'Screens/dashBoard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

 void main() => runApp(const MyApp());

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return ResponsiveSizer(
       builder: (context, orientation, screenType){

         return GetMaterialApp(

           debugShowCheckedModeBanner: false,
           home :DashBoardPage(),

           supportedLocales: L10n.all,
           localizationsDelegates: [

             AppLocalizations.delegate,
             GlobalMaterialLocalizations.delegate,
             GlobalCupertinoLocalizations.delegate,
             GlobalWidgetsLocalizations.delegate

           ],
         );

       }

     );
   }
 }
