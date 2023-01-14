import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../const/constants.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {

  String tester = """
  Your scanned result will show up here.
  If it is a link copy and paste in your
  browser.
  (links start with https:// or www...)
  """;
  void copyShit(){
    Clipboard.setData(ClipboardData(text: tester)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Text copied to clipboard",
            style: TextStyle(fontSize: 17, fontFamily: 'Coolvetica'),
          )));
    });
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Future<void> scanQR() async {
      String barcodeScanRes;
      // Platform messages may fail, so we use a try/catch PlatformException.
      try {
        barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#D84727', 'Cancel', true, ScanMode.QR);
        print(barcodeScanRes);
      } on PlatformException {
        barcodeScanRes = 'Failed to get platform version.';
      }

      // If the widget was removed from the tree while the asynchronous platform
      // message was in flight, we want to discard the reply rather than calling
      // setState to update our non-existent appearance.
      if (!mounted) return;

      setState(() {
        tester = barcodeScanRes;
      });
    }
    String result = '';
    if (tester == '-1'){
      setState(() {
        result = 'No QR code found';
      });
    }else result = tester;
    return Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Scan a code...',
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
                'Hit the "Scan" button below to start scanning!',
                style: TextDesigns.BODYTEXT,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: SizedBox(
                  height: screenSize.height * 0.25,
                  width: screenSize.width,
                  child: Container(
                    color: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          result,
                          style: TextDesigns.SCANNEDTEXT,
                          overflow: TextOverflow.fade,
                      ),
                    ),
                  )),
            ),
             IconButton(
                  onPressed: () => copyShit(),
                  icon: Icon(Icons.copy),
                  color: DesignConstants.RICHBLACK,
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Use this button to copy your scanned code!',
                style: TextDesigns.BODYTEXT,
              ),
            ),
            Divider(
              thickness: 0.7,
              endIndent: 18,
              indent: 18,
              color: DesignConstants.RICHBLACK,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(DesignConstants.BLUE)),
                    onPressed: () {
                      scanQR();
                    },
                    child: Text(
                      'Scan',
                      style: TextDesigns.BUTTONTEXT,
                    )),
              ),
            ),

            Spacer(),
            SizedBox(
              height: 80,
              width: screenSize.width,
              child: Container(
                alignment: Alignment.bottomCenter,
                color: Colors.black,
              ),
            )
          ],
        ));
  }
}

