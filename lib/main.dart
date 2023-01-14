import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:QCard/const/constants.dart';
import 'package:QCard/screens/home_screen.dart';
import 'package:QCard/screens/create_screen.dart';
import 'package:QCard/screens/splash_screen.dart';

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

    Future<InitializationStatus> _initGoogleMobileAds() {
      // TODO: Initialize Google Mobile Ads SDK
      return MobileAds.instance.initialize();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Coolvetica',
      ),
      home: SplashPage(),

    );
  }
}
