import 'package:flutter/material.dart';
import 'package:my_rate/home.dart';
import 'package:my_rate/mill.dart';

class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Choose one",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Mandi rate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mill()));
                  },
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Mill rate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
