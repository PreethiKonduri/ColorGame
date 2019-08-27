import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

main() {
  // entry point to dart
  runApp(MaterialApp(

      // entry point to flutter ; starting with a Material app or a Cupertino app
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Game On"),
        ),
        // scaffold is for android , scaffold is a frame structure that can hold widgets

        body: MyShape(),
      )));
  /*
  Scaffold always require a body
   */
}

class MyShape extends StatefulWidget {
  @override
  _MyShapeState createState() => _MyShapeState();
}

class _MyShapeState extends State<MyShape> {
  var color1 = Colors.orange;
  var color2 = Colors.pink;
  var color3 = Colors.lightBlue;
  var color4 = Colors.brown;
  var color5 = Colors.green;
  var color6 = Colors.deepPurple;
  var color7 = Colors.red;
  var colorList = [
    Colors.orange,
    Colors.pink,
    Colors.lightBlue,
    Colors.brown,
    Colors.green,
    Colors.deepPurple,
    Colors.red
  ];
  int seconds = 20;
  Timer timer;
  var value = "";
  var temp;

  updateTime(bool flag) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (seconds == 30) {
          seconds = 20;
          timer.cancel();
        } else {
          if (seconds == 0) {
            timer.cancel();
            if (color1 == color2 &&
                color1 == color3 &&
                color1 == color4 &&
                color1 == color5 &&
                color1 == color6 &&
                color1 == color7) {
              value = "Success";
            } else {
              value = "U Lost, Try again..!";
            }
          } else {
            seconds = seconds - 1;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  } //  stopTimer() {
//    setState(() {
//      timer.cancel();
//    });
//  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40.0,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Time Left over: $seconds",
                      textAlign: TextAlign.center,
                    )),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: new Border.all(color: Colors.black)),
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    seconds = 20;
                    updateTime(true);
                  });
                },
                child: Container(
                  height: 30.0,
                  width: 30.0,
//                  margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    // updateTime(flag: false);
//                    timer.cancel();

                    seconds = 30;
                    updateTime(true);
                    color1 = Colors.orange;
                    color2 = Colors.pink;
                    color3 = Colors.lightBlue;
                    color4 = Colors.brown;
                    color5 = Colors.green;
                    color6 = Colors.deepPurple;
                    color7 = Colors.red;
                    value = "";
                  });
                },
                child: Container(
                  height: 30.0,
                  width: 30.0,
//                  margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      //  color1 = Colors.pink;
                      if (seconds != 20) {
                        value = "";
                        Random _random = new Random();
                        color1 = colorList[_random.nextInt(colorList.length)];
                        if (color1 == color2 &&
                            color1 == color3 &&
                            color1 == color4 &&
                            color1 == color5 &&
                            color1 == color6 &&
                            color1 == color7) {
                          value = "Success";
                          updateTime(false);
                          print("Success");
                        }
                      } else {
                        value = "Start Timer, to start the game";
                      }
                      // color1 = Colors.pink;
                    });
                  },
                  child: Container(
                    color: color1,
                    height: 200.0,
                    width: 100.0,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (seconds != 20) {
                        value = "";
                        Random _random = new Random();
                        color2 = colorList[_random.nextInt(colorList.length)];
                        if (color1 == color2 &&
                            color1 == color3 &&
                            color1 == color4 &&
                            color1 == color5 &&
                            color1 == color6 &&
                            color1 == color7) {
                          value = "Success";
                          updateTime(false);
                          print("Success");
                        }
                      } else {
                        value = "Start Timer, to start the game";
                      }
                    });
                  },
                  child: Container(
                    color: color2,
                    height: 200.0,
                    width: 100.0,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (seconds != 20) {
                        value = "";
                        Random _random = new Random();
                        color3 = colorList[_random.nextInt(colorList.length)];
                        if (color1 == color2 &&
                            color1 == color3 &&
                            color1 == color4 &&
                            color1 == color5 &&
                            color1 == color6 &&
                            color1 == color7) {
                          value = "Success";
                          updateTime(false);
                          print("Success");
                        }
                      } else {
                        value = "Start Timer, to start the game";
                      }
                    });
                  },
                  child: Container(
                    color: color3,
                    height: 200.0,
                    width: 100.0,
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                if (seconds != 20) {
                  value = "";
                  Random _random = new Random();
                  color4 = colorList[_random.nextInt(colorList.length)];
                  if (color1 == color2 &&
                      color1 == color3 &&
                      color1 == color4 &&
                      color1 == color5 &&
                      color1 == color6 &&
                      color1 == color7) {
                    value = "Success";
                    updateTime(false);
                    print("Success");
                  }
                } else {
                  value = "Start Timer, to start the game";
                }
              });
            },
            child: Container(
              color: color4,
              height: 200.0,
              width: 100.0,
              child: Text("$value"),
            ),
          )),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (seconds != 20) {
                        value = "";
                        Random _random = new Random();
                        color5 = colorList[_random.nextInt(colorList.length)];
                        if (color1 == color2 &&
                            color1 == color3 &&
                            color1 == color4 &&
                            color1 == color5 &&
                            color1 == color6 &&
                            color1 == color7) {
                          value = "Success";
                          updateTime(false);
                          print("Success");
                        }
                      } else {
                        value = "Start Timer, to start the game";
                      }
                    });
                  },
                  child: Container(
                    color: color5,
                    height: 200.0,
                    width: 100.0,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (seconds != 20) {
                        value = "";
                        Random _random = new Random();
                        color6 = colorList[_random.nextInt(colorList.length)];
                        if (color1 == color2 &&
                            color1 == color3 &&
                            color1 == color4 &&
                            color1 == color5 &&
                            color1 == color6 &&
                            color1 == color7) {
                          value = "Success";
                          updateTime(false);
                          print("Success");
                        }
                      } else {
                        value = "Start Timer, to start the game";
                      }
                    });
                  },
                  child: Container(
                    color: color6,
                    height: 200.0,
                    width: 100.0,
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (seconds != 20) {
                      value = "";
                      Random _random = new Random();
                      color7 = colorList[_random.nextInt(colorList.length)];
                      if (color1 == color2 &&
                          color1 == color3 &&
                          color1 == color4 &&
                          color1 == color5 &&
                          color1 == color6 &&
                          color1 == color7) {
                        value = "Success";
                        updateTime(false);
                        print("Success");
                      }
                    } else {
                      value = "Start Timer, to start the game";
                    }
                  });
                },
                child: Container(
                  color: color7,
                  height: 200.0,
                  width: 100.0,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
