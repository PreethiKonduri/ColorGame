import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Game On"),
        ),
        body: MyShape(),
      )));
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
  Timer mainTimer;
  var value = "";
  var resetStatus = true;

  _updateTime(bool flag) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      mainTimer = timer;
      setState(() {
        if (seconds == 0) {
          timer.cancel();
          if (color1 == color2 &&
              color1 == color3 &&
              color1 == color4 &&
              color1 == color5 &&
              color1 == color6 &&
              color1 == color7) {
            value = "Success";
            resetStatus = false;
          } else {
            value = "U Lost, Try again..!";
            resetStatus = false;
          }
        } else {
          seconds = seconds - 1;
        }
      });
    });
  }

  _getRandomColor() {
    Random _random = new Random();
    return _random.nextInt(colorList.length);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_mainPanel(), _setOne(), _setTwo(), _setThree()],
      ),
    );
  }

  _setThree() {
    return Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (resetStatus) {
                  if (seconds != 20) {
                    value = "";
                    color5 = colorList[_getRandomColor()];
                    if (color1 == color2 &&
                        color1 == color3 &&
                        color1 == color4 &&
                        color1 == color5 &&
                        color1 == color6 &&
                        color1 == color7) {
                      value = "Success";
                      mainTimer.cancel();
                      resetStatus = false;
                      print("Success");
                    }
                  } else {
                    value = "Start Timer, to start the game";
                  }
                } else {
                  value = "Reset Timer and click on Timer to start the game";
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
                if (resetStatus) {
                  if (seconds != 20) {
                    value = "";

                    color6 = colorList[_getRandomColor()];
                    if (color1 == color2 &&
                        color1 == color3 &&
                        color1 == color4 &&
                        color1 == color5 &&
                        color1 == color6 &&
                        color1 == color7) {
                      value = "Success";
                      mainTimer.cancel();
                      resetStatus = false;
                      print("Success");
                    }
                  } else {
                    value = "Start Timer, to start the game";
                  }
                } else {
                  value = "Reset Timer and click on Timer to start the game";
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
              if (resetStatus) {
                if (seconds != 20) {
                  value = "";

                  color7 = colorList[_getRandomColor()];
                  if (color1 == color2 &&
                      color1 == color3 &&
                      color1 == color4 &&
                      color1 == color5 &&
                      color1 == color6 &&
                      color1 == color7) {
                    value = "Success";
                    mainTimer.cancel();
                    resetStatus = false;
                    print("Success");
                  }
                } else {
                  value = "Start Timer, to start the game";
                }
              } else {
                value = "Reset Timer and click on Timer to start the game";
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
    );
  }

  _setTwo() {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        setState(() {
          if (resetStatus) {
            if (seconds != 20) {
              value = "";
              color4 = colorList[_getRandomColor()];
              if (color1 == color2 &&
                  color1 == color3 &&
                  color1 == color4 &&
                  color1 == color5 &&
                  color1 == color6 &&
                  color1 == color7) {
                value = "Success";
                mainTimer.cancel();
                resetStatus = false;
                print("Success");
              }
            } else {
              value = "Start Timer, to start the game";
            }
          } else {
            value = "Reset Timer and click on Timer to start the game";
          }
        });
      },
      child: Container(
        color: color4,
        height: 200.0,
        width: 100.0,
        alignment: Alignment.center,
        child: Text(
          "$value",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
  }

  _setOne() {
    return Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                //  color1 = Colors.pink;
                if (resetStatus) {
                  if (seconds != 20) {
                    value = "";

                    color1 = colorList[_getRandomColor()];
                    if (color1 == color2 &&
                        color1 == color3 &&
                        color1 == color4 &&
                        color1 == color5 &&
                        color1 == color6 &&
                        color1 == color7) {
                      value = "Success";
                      mainTimer.cancel();
                      resetStatus = false;
                      print("Success");
                    }
                  } else {
                    value = "Start Timer, to start the game";
                  }
                } else {
                  value = "Reset Timer and click on Timer to start the game";
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
                if (resetStatus) {
                  if (seconds != 20) {
                    value = "";

                    color2 = colorList[_getRandomColor()];
                    if (color1 == color2 &&
                        color1 == color3 &&
                        color1 == color4 &&
                        color1 == color5 &&
                        color1 == color6 &&
                        color1 == color7) {
                      value = "Success";
                      mainTimer.cancel();
                      resetStatus = false;
                      print("Success");
                    }
                  } else {
                    value = "Start Timer, to start the game";
                  }
                } else {
                  value = "Reset Timer and click on Timer to start the game";
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
                if (resetStatus) {
                  if (seconds != 20) {
                    value = "";
                    color3 = colorList[_getRandomColor()];
                    if (color1 == color2 &&
                        color1 == color3 &&
                        color1 == color4 &&
                        color1 == color5 &&
                        color1 == color6 &&
                        color1 == color7) {
                      value = "Success";
                      mainTimer.cancel();
                      resetStatus = false;
                      print("Success");
                    }
                  } else {
                    value = "Start Timer, to start the game";
                  }
                } else {
                  value = "Reset Timer and click on Timer to start the game";
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
    );
  }

  _mainPanel() {
    return Row(
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
              value = "";
              _updateTime(true);
            });
          },
          child: Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (mainTimer != null) {
                mainTimer.cancel();
                seconds = 20;
              } else {
                seconds = 20;
              }
              resetStatus = true;
//                    seconds = 30;
//                    updateTime(true);
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
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
