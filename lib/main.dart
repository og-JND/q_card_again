import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:q_card_again/const/constants.dart';
import 'package:q_card_again/screens/home_screen.dart';
import 'package:q_card_again/screens/create_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: DesignConstants.RICHBLACK,
      systemNavigationBarColor: DesignConstants.RICHBLACK,
    )
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Coolvetica',
      ),
      home: HomeScreen(),

    );
  }
}
