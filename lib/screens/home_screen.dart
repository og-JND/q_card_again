import 'package:flutter/material.dart';
import 'package:q_card_again/const/constants.dart';
import 'package:q_card_again/custom_widgets.dart';
import 'package:q_card_again/screens/create_screen.dart';
import 'package:q_card_again/screens/scan_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List PAGES = [
    ScanScreen(),
    CreateScreen(),
  ];
  int navIndex = 0;

  void navBarTap(int index){
    setState(() {
      navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: DesignConstants.WHITE,
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextDesigns.NAVTEXT,
          unselectedLabelStyle: TextDesigns.NAVTEXT,
          currentIndex: navIndex,
          backgroundColor: DesignConstants.RICHBLACK,
          selectedItemColor: DesignConstants.ORANGE,
          unselectedItemColor: DesignConstants.WHITE,
          type: BottomNavigationBarType.fixed,
          onTap: navBarTap,
          items:[
            navItem('Scan'),
            navItem('Create'),
          ]
      ),
      body: SafeArea(child: PAGES.elementAt(navIndex))
    );
  }
}
