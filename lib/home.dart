import 'package:flutter/material.dart';
import 'package:my_rate/example.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? label1;
  String? label2;
  String? label3;
  String? label4;
  String? label5;
  String? label6;
  String? label7;
  String? label8;
  String? label9;
  bool? isEdit1;
  bool? isEdit2;
  bool? isEdit3;
  bool? isEdit4;
  bool? isEdit5;
  bool? isEdit6;
  bool? isEdit7;
  bool? isEdit8;
  bool? isEdit9;
  TextEditingController labelController1 = TextEditingController();
  TextEditingController labelController2 = TextEditingController();
  TextEditingController labelController3 = TextEditingController();
  TextEditingController labelController4 = TextEditingController();
  TextEditingController labelController5 = TextEditingController();
  TextEditingController labelController6 = TextEditingController();
  TextEditingController labelController7 = TextEditingController();
  TextEditingController labelController8 = TextEditingController();
  TextEditingController labelController9 = TextEditingController();

  TextEditingController valueController1 = TextEditingController();
  TextEditingController valueController2 = TextEditingController();
  TextEditingController valueController3 = TextEditingController();
  TextEditingController valueController4 = TextEditingController();
  TextEditingController valueController5 = TextEditingController();
  TextEditingController valueController6 = TextEditingController();
  TextEditingController valueController7 = TextEditingController();
  TextEditingController valueController8 = TextEditingController();
  TextEditingController valueController9 = TextEditingController();
  Future? myFuture;
  @override
  void initState() {
    super.initState();
    // label1 = "Hello";
    // label2 = "Hello";
    // label3 = "Hello";
    // label4 = "Hello";
    // label5 = "Hello";
    // label6 = "Hello";
    // label7 = "Hello";
    // label8 = "Hello";
    // labelController1.text = label1!;
    // labelController2.text = label2!;
    // labelController3.text = label3!;
    // labelController4.text = label4!;
    // labelController5.text = label5!;
    // labelController6.text = label6!;
    // labelController7.text = label7!;
    // labelController8.text = label7!;

    isEdit1 = false;
    isEdit2 = false;
    isEdit3 = false;
    isEdit4 = false;
    isEdit5 = false;
    isEdit6 = false;
    isEdit7 = false;
    isEdit8 = false;
    isEdit9 = false;

    myFuture = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Mandi Rate"),
      ),
      body: FutureBuilder(
        future: myFuture,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            print("here");
            return SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit1!
                                  ? TextField(
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                autofocus: true,
                                controller: labelController1,
                                onChanged: (value) {
                                  setState(() {
                                    label1 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit1 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label1!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit1 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit2!
                                  ? TextField(
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                autofocus: true,
                                controller: labelController2,
                                onChanged: (value) {
                                  setState(() {
                                    label2 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit2 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label2!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit2 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController2,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit3!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController3,
                                onChanged: (value) {
                                  setState(() {
                                    label3 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit3 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label3!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit3 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController3,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit4!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController4,
                                onChanged: (value) {
                                  setState(() {
                                    label4 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit4 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label4!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit4 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController4,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit5!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController5,
                                onChanged: (value) {
                                  setState(() {
                                    label5 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit5 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label5!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit5 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController5,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit6!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController6,
                                onChanged: (value) {
                                  setState(() {
                                    label6 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit6 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label6!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit6 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController6,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit7!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController7,
                                onChanged: (value) {
                                  setState(() {
                                    label7 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit7 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label7!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit7 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController7,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit8!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController8,
                                onChanged: (value) {
                                  setState(() {
                                    label8 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit8 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label8!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit8 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController8,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: isEdit9!
                                  ? TextField(
                                autofocus: true,
                                decoration:
                                InputDecoration(hintText: "please Enter"),
                                controller: labelController9,
                                onChanged: (value) {
                                  setState(() {
                                    label9 = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  setState(() {
                                    isEdit9 = false;
                                  });
                                },
                              )
                                  : Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text(
                                      label9!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            isEdit9 = true;
                                          });
                                        },
                                        child: Icon(Icons.edit))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Please Enter", border: InputBorder.none),
                                controller: valueController9,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          prefs.setStringList("values", [
                            labelController1.text,
                            labelController2.text,
                            labelController3.text,
                            labelController4.text,
                            labelController5.text,
                            labelController6.text,
                            labelController7.text,
                            labelController8.text,
                            labelController9.text,
                          ]);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Example(labels: [
                                    labelController1.text,
                                    labelController2.text,
                                    labelController3.text,
                                    labelController4.text,
                                    labelController5.text,
                                    labelController6.text,
                                    labelController7.text,
                                    labelController8.text,
                                    labelController9.text,
                                  ], values: [
                                    valueController1.text,
                                    valueController2.text,
                                    valueController3.text,
                                    valueController4.text,
                                    valueController5.text,
                                    valueController6.text,
                                    valueController7.text,
                                    valueController8.text,
                                    valueController9.text
                                  ])));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.black)),
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError){
            print("there");
            print("got error: ${snapshot.error.toString()}");
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            print("none");
            return Container();
          }
        }
      ),
    );
  }

  Future<List<String>> getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("values")){
      List<String>? values = prefs.getStringList("values");
      if(values!.isEmpty) {
        setState(() {
          label1 = "Hello";
          label2 = "Hello";
          label3 = "Hello";
          label4 = "Hello";
          label5 = "Hello";
          label6 = "Hello";
          label7 = "Hello";
          label8 = "Hello";
          label9 = "Hello";
          labelController1.text = label1!;
          labelController2.text = label2!;
          labelController3.text = label3!;
          labelController4.text = label4!;
          labelController5.text = label5!;
          labelController6.text = label6!;
          labelController7.text = label7!;
          labelController8.text = label8!;
          labelController9.text = label9!;
        });
      } else {
        if(values.length == 8) {
          prefs.setStringList("values", List<String>.generate(9, (index) => "hello"));
        }
        print(values.length);
        setState(() {
          label1 = values[0];
          label2 = values[1];
          label3 = values[2];
          label4 = values[3];
          label5 = values[4];
          label6 = values[5];
          label7 = values[6];
          label8 = values[7];
          label9 = values[8];
          labelController1.text = label1!;
          labelController2.text = label2!;
          labelController3.text = label3!;
          labelController4.text = label4!;
          labelController5.text = label5!;
          labelController6.text = label6!;
          labelController7.text = label7!;
          labelController8.text = label8!;
          labelController9.text = label9!;
        });
      }
    } else{
      print("else");
      prefs.setStringList("values", [
        "hello",
        "hello",
        "hello",
        "hello",
        "hello",
        "hello",
        "hello",
        "hello",
        "hello"
      ]);
      setState(() {
        label1 = "hello";
        label2 = "hello";
        label3 = "hello";
        label4 = "hello";
        label5 = "hello";
        label6 = "hello";
        label7 = "hello";
        label8 = "hello";
        label9 = "hello";
        labelController1.text = label1!;
        labelController2.text = label2!;
        labelController3.text = label3!;
        labelController4.text = label4!;
        labelController5.text = label5!;
        labelController6.text = label6!;
        labelController7.text = label7!;
        labelController8.text = label8!;
        labelController9.text = label9!;
      });
    }
    return [""];
  }
}
