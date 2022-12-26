import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScannerApp extends StatefulWidget {
  @override
  _ScannerAppState createState() => _ScannerAppState();
}

class _ScannerAppState extends State<ScannerApp> {
  String _barcode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QR Code Scanner'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_barcode),
             FloatingActionButton(
                onPressed: () async {
                  try {
                    dynamic barcode = await BarcodeScanner.scan();
                    setState(() {
                      _barcode = barcode;
                    });
                  } on PlatformException catch (e) {
                    if (e.code == BarcodeScanner.cameraAccessDenied) {
                      setState(() {
                        _barcode = 'The user did not grant the camera permission!';
                      });
                    } else {
                      setState(() {
                        _barcode = 'Unknown error: $e';
                      });
                    }
                  } on FormatException {
                    setState(() {
                      _barcode = 'null (User returned using the "back"-button before scanning anything. Result)';
                    });
                  } catch (e) {
                    setState(() {
                      _barcode = 'Unknown error: $e';
                    });
                  }
                },
                child: Text('Scan'),
              ),
            ],
          ),
        ),
      
    );
  }
}
