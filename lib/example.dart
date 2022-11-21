import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_share/flutter_share.dart';

class Example extends StatefulWidget {
  List<String>? labels;
  List<String>? values;

  Example({this.labels, this.values});

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  ScreenshotController controller = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Screenshot(
                controller: controller,
                child: Stack(
                  children: [
                    Image.asset("assets/image/image.jpg"),
                    Padding(
                      padding: EdgeInsets.only(top: 180, right: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            "CHANA RATES",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: ListView.builder(
                              itemCount: widget.values!.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(top: index == 0 ? 0 : 10, left: 20, right: 20, ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            widget.labels![index].toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            widget.values![index] + " loose rate",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Chetan Tanna,\n8200719579/ 7487921234".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            button()
          ],
        ),
      ),
    );
  }

  button() {
    return TextButton(
      onPressed: () {
        controller.capture(delay: Duration(seconds: 1)).then((value) async {
          if (value != null) {
            final directory = await getExternalStorageDirectory();
            final imagePath = await File('${directory!.path}/image.png').create();
            await imagePath.writeAsBytes(value);
            print("path: ${imagePath.path}");

            /// Share Plugin
            await FlutterShare.shareFile(title: "Today's rate", filePath: imagePath.path);
          }
        });
      },
      style: ButtonStyle(
          backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.black)),
      child: Text("Submit"),
    );
  }
}

