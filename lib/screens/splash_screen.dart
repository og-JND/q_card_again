import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:QCard/const/constants.dart';
import 'package:QCard/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/img/icon512.png'),
      loadingTextPadding: EdgeInsets.all(15),
      title: Text(
        "QCard",
        style: TextDesigns.HEADERTEXT,
      ),
      backgroundColor: DesignConstants.WHITE,
      showLoader: true,
      loaderColor: DesignConstants.RICHBLACK,
      navigator: HomeScreen(),
      durationInSeconds: 5,
    );
  }
}