import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../const/constants.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  String imageData = '';
  Widget Qrguy = QrImage(
    data: "Made by Jedidiah Dennis.",
    padding: EdgeInsets.all(15),
    version: QrVersions.auto,
    size: 225.0,
    foregroundColor: DesignConstants.RICHBLACK,
  );
  void createQr(data) {
    setState(() {
      Qrguy = QrImage(
        padding: EdgeInsets.all(15),
        data: data,
        version: QrVersions.auto,
        size: 225.0,
        semanticsLabel: data,
        errorStateBuilder: (cxt, err) {
          return Container(
            child: Center(
              child: Text(
                "Uh oh! Something went wrong...",
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
        foregroundColor: DesignConstants.RICHBLACK,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Create a code...',
                    style: TextDesigns.HEADERTEXT,
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  endIndent: 25,
                  indent: 25,
                  color: DesignConstants.RICHBLACK,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Enter the data you wish to convert to a QR code.',
                    style: TextDesigns.BODYTEXT,
                  ),
                ),
                Center(
                      child: Qrguy
                ),
                Divider(
                  thickness: 0.7,
                  endIndent: 18,
                  indent: 18,
                  color: DesignConstants.RICHBLACK,
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                  SizedBox(
                    width: screenSize.width*0.9,
                    child: TextField(
                      onSubmitted: (text) => setState(() {
                        createQr(text);
                      }),
                      //expands: true,
                      decoration: InputDecoration(
                        hintText: 'type here...',
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'You can screenshot your created code to save it for later...',
                      style: TextDesigns.HINTTEXT,
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 80,
                  width: screenSize.width,
                  child: Container(
                    alignment:Alignment.bottomCenter,
                    color: Colors.black,
                  ),
                )
              ],
            )
      ),
    );
  }
}