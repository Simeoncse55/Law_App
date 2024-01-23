import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Pages/VideoPageMaterials/video_page.dart';
import 'Pages/home_page.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  int _selectedIndex =0;
  static const List<Widget> _widgetOptions =<Widget> [
    Home(),
    VideoPage(),
    Text('SEARCH PAGE'),
    Text('SAVE PAGE'),
    Text('SETTINGS'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GNav(

             backgroundColor:Colors.black,
             color: Colors.white,
            activeColor: Colors.white,
             //tabActiveBorder: Border.all(color: Colors.red),
           tabBackgroundColor: Color(0xF06E1112),

            padding: EdgeInsets.all(10),
            gap: 10,
            
            onTabChange: (index){
               setState(() {
                 _selectedIndex =index;
               });
            },
            tabs: [

              GButton(icon: Icons.home_rounded , text: 'Home', ),
              GButton(icon: Icons.video_collection_rounded , text: 'Videos',),
              GButton(icon: Icons.search_rounded, text: 'Search',),
              GButton(icon: Icons.bookmark_outline_rounded , text: 'Save',),
              GButton(icon: Icons.settings, text: 'Settings',),
            ],
          ),
        ),
      ),
    );
  }
}
