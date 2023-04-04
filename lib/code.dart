import 'dart:math';
import 'dart:ffi';
import 'package:flutter/material.dart';

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  double s = 90;
  double mys = 180;
  int w = 60;
  int a = 28;

  var t1 = 0;
  var t2 = 0;

  var tw1 = 0;
  var tw2 = 0;

  var ta1 = 0;
  var ta2 = 0;

  double BMI1 = 0;
  String BMI = "0";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.26,
              child: Row(
                children: [
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 300, end: 0),
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(value, 0),
                        child: InkWell(
                          onTap: (() {
                            setState(() {
                              t1 = 1;
                              t2 = 0;
                            });
                          }),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                color: (t1 == 1)
                                    ? Color(0xffB3C4D)
                                    : Color(0xff1d1e33),
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: Column(children: [
                              Icon(Icons.female,
                                  size: 160,
                                  color: (t1 == 1)
                                      ? Color(0xffEB1555)
                                      : Colors.white),
                              Text(
                                "FeMale",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: (t1 == 1)
                                        ? Color(0xffEB1555)
                                        : Colors.white),
                              )
                            ]),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: -300, end: 0),
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(value, 0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              t2 = 1;
                              t1 = 0;
                            });
                          },
                          child: Ink(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: (t2 == 1)
                                      ? Color(0xffB3C4D)
                                      : Color(0xff1d1e33),
                                  borderRadius: BorderRadius.circular(10)),
                              alignment: Alignment.center,
                              child: Column(children: [
                                Icon(
                                  Icons.male,
                                  size: 160,
                                  color: (t2 == 1)
                                      ? Color(0xffEB1555)
                                      : Colors.white,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: (t2 == 1)
                                          ? Color(0xffEB1555)
                                          : Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: -400, end: 0),
              duration: Duration(seconds: 2),
              curve: Curves.bounceOut,
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, value),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: BoxDecoration(color: Color(0xff1d1e33)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Height",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Row(children: [
                                Text(
                                  "${s.toInt()}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(
                                      height: 2,
                                      fontSize: 10,
                                      color: Colors.white),
                                )
                              ]),
                              TweenAnimationBuilder(
                                tween: Tween<double>(begin: 0, end: 1),
                                duration: Duration(seconds: 2),
                                builder: (context, value, child) {
                                  return Transform.scale(
                                    scale: value,
                                    child: Container(
                                      padding: EdgeInsets.only(top: 5),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.80,
                                      child: Slider(
                                        value: s,
                                        onChanged: (value) {
                                          setState(() {
                                            s = value;
                                          });
                                        },
                                        min: 90,
                                        max: 200,
                                        divisions: 200,
                                        activeColor: Color(0xffEB1555),
                                        thumbColor: Color(0xffEB1555),
                                        inactiveColor: Color(0xff555555),
                                        label: s.toString(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ]),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 200, end: 0),
                  duration: Duration(seconds: 2),
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(0, value),
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(seconds: 2),
                        builder: (context, scale, child) {
                          return Transform.scale(
                            scale: scale,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.46,
                              decoration: BoxDecoration(
                                  color: Color(0xff1d1e33),
                                  borderRadius: BorderRadius.circular(10)),
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Weight",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      "$w",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              w--;
                                              tw1 = 1;
                                              tw2 = 0;
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: (tw1 == 1)
                                                  ? Color(0xff6e6f7a)
                                                  : Color(0xff4c4f4e),
                                            ),
                                            child: Icon(
                                              Icons.horizontal_rule,
                                              color: (tw1 == 1)
                                                  ? Color(0xffF67fa4)
                                                  : Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              w++;
                                              tw1 = 0;
                                              tw2 = 1;
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: (tw2 == 1)
                                                  ? Color(0xff6e6f7a)
                                                  : Color(0xff4c4f5e),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: (tw2 == 1)
                                                  ? Color(0xffF67fa4)
                                                  : Color(0xffffffff),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                Spacer(),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 200, end: 0),
                  duration: Duration(seconds: 2),
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(0, value),
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(seconds: 2),
                        builder: (context, scale, child) {
                          return Transform.scale(
                            scale: scale,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.46,
                              decoration: BoxDecoration(
                                  color: Color(0xff1d1e33),
                                  borderRadius: BorderRadius.circular(10)),
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "AGE",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text(
                                      "$a",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              a--;
                                              ta1 = 1;
                                              ta2 = 0;
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: (ta1 == 1)
                                                  ? Color(0xff6e6f7a)
                                                  : Color(0xff4c4f5e),
                                            ),
                                            child: Icon(
                                              Icons.horizontal_rule,
                                              color: (ta1 == 1)
                                                  ? Color(0xfff67fa4)
                                                  : Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              a++;
                                              ta2 = 0;
                                              ta1 = 1;
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: (ta1 == 1)
                                                    ? Color(0xff6e6f7a)
                                                    : Color(0xff4c4f5e)),
                                            child: Icon(
                                              Icons.add,
                                              color: (ta1 == 1)
                                                  ? Color(0xfff67fa4)
                                                  : Color(0xffffffff),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
            SizedBox(
              width: 5,
            ),
          ]),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              BMI1 = (w / mys / mys) * 1000;
              if (BMI1 <= 18.5) BMI = "Under_Weight";
              if (BMI1 >= 18.5 && BMI1 <= 24.9) BMI = "Healthy";
              if (BMI1 >= 24.9 && BMI1 <= 30) BMI = "OvertWeight";
              if (BMI1 >= 30) BMI = "UnHealthy";
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("${BMI}"),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
                ),
              );
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            color: Colors.pink,
            child: Text(
              "Calculate",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}
