import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myapp(),
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int w = 60;
  int a = 28;
  int? ans;
  String? con;
  double myslidervalue = 0;
  var maleactive1 = Color(0xff1D1E33);
  var maleactive2 = Colors.white;
  var femaleactive1 = Color(0xff1D1E33);
  var femaleactive2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 40),
        ),
        backgroundColor: Color(0xff090E21),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 300, end: 0),
                      duration: const Duration(seconds: 2),
                      curve: Curves.decelerate,
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: Offset(-value, 0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                femaleactive1 = Color(0xff1D1E49);
                                femaleactive2 = Colors.pink;
                                maleactive1 = Color(0xff1D1E33);
                                maleactive2 = Colors.white;
                              });
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 200,
                              width: 160,
                              decoration: BoxDecoration(
                                color: femaleactive1,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 150,
                                    color: femaleactive2,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        fontSize: 30, color: femaleactive2),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 200, end: 0),
                      duration: const Duration(seconds: 2),
                      curve: Curves.decelerate,
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: Offset(value, 0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                maleactive1 = Color(0xff1D1E49);
                                maleactive2 = Colors.pink;
                                femaleactive1 = Color(0xff1D1E33);
                                femaleactive2 = Colors.white;
                              });
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 200,
                              width: 160,
                              decoration: BoxDecoration(
                                color: maleactive1,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 150,
                                    color: maleactive2,
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                        fontSize: 30, color: maleactive2),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 300, end: 0),
                      duration: const Duration(seconds: 2),
                      curve: Curves.decelerate,
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: Offset(0, -value),
                          child: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.87,
                            decoration: BoxDecoration(
                              color: Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff4C4F5E),
                                  ),
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                    (ans == null)
                                        ? 'Enter Data'
                                        : "${ans.toString()}  ${con}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white),
                                  ),
                                ),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: myslidervalue.toInt().toString(),
                                      style: TextStyle(
                                          fontSize: 60,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'cm',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white38,
                                      )),
                                ])),
                                Slider(
                                  value: myslidervalue,
                                  onChanged: (val) {
                                    setState(() {
                                      myslidervalue = val;
                                    });
                                  },
                                  thumbColor: Colors.red,
                                  inactiveColor: Colors.grey.shade800,
                                  min: 0,
                                  max: 500,
                                  divisions: 500,
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 300, end: 0),
                      duration: Duration(seconds: 2),
                      curve: Curves.decelerate,
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: Offset(-value,0),
                          child: Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                Text(
                                  w.toInt().toString(),
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          w++;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff4C4F5E)),
                                        height: 50,
                                        alignment: Alignment.center,
                                        width: 50,
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          w--;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff4C4F5E)),
                                        height: 50,
                                        alignment: Alignment.center,
                                        width: 50,
                                        child: Icon(
                                          Icons.remove,
                                          size: 20,
                                          color: Colors.red.shade300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 300, end: 0),
                      duration: Duration(seconds: 2),
                      curve: Curves.decelerate,
                    builder: (context,value,child) {
                      return Transform.translate(
                        offset: Offset(value,0),
                        child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xff1D1E33),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                a.toInt().toString(),
                                style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        a++;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4C4F5E)),
                                      height: 50,
                                      alignment: Alignment.center,
                                      width: 50,
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        a--;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4C4F5E)),
                                      height: 50,
                                      alignment: Alignment.center,
                                      width: 50,
                                      child: Icon(
                                        Icons.remove,
                                        size: 20,
                                        color: Colors.red.shade300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      ans = (w /
                              ((myslidervalue.toInt() / 100) *
                                  (myslidervalue.toInt() / 100)))
                          .toInt();
                      if (ans! < 25 && ans! > 18) {
                        con = 'Healthy';
                      } else if (ans! > 25) {
                        con = 'Over Weighted';
                      } else if (ans! < 18) {
                        con = 'Under Weighted';
                      }
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0XFFEB1555),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
      backgroundColor: Color(0xff090E21),
    );
  }
}
