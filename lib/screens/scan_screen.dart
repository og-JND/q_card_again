import 'package:flutter/material.dart';
import '../const/constants.dart';


class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Scan a code...', style: TextDesigns.HEADERTEXT,),
              ),
              Divider(
                endIndent: 25,
                indent: 25,
                color: DesignConstants.RICHBLACK,
              ),
              Text('Body text', style: TextDesigns.BODYTEXT,),

            ],
          )
      ),
    );
  }
}

