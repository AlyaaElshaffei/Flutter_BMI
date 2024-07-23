import 'package:flutter/material.dart';
import 'package:myapp/Result.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool male = true;
  double val = 100;
  int weight = 70;
  int age = 25;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0d1232),
        appBar: AppBar(
          title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff0d1232),
           
          
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.1),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        male = true;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: male ? Colors.blue : Color(0xff252a48),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/male.png',
                              width: 40.0,
                              height: 40.0,
                              color: Colors.white,
                            ),
                            Text("MALE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              male = false;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: male ? Color(0xff252a48) : Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/femenine.png',
                                    width: 40.0,
                                    height: 40.0,
                                    color: Colors.white,
                                  ),
                                  Text("FEMALE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                ],
                              ),
                            ))),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff252a48),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Height",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  val.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "  cm",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Slider(
                              min: 100,
                              max: 200,
                              value: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value.roundToDouble();
                                });
                              },
                            ),
                          ]))),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff252a48),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xff0d1232),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                              ),
                              SizedBox(width: 15),
                              CircleAvatar(
                                backgroundColor: Color(0xff0d1232),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff252a48),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xff0d1232),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                              ),
                              SizedBox(width: 15),
                              CircleAvatar(
                                backgroundColor: Color(0xff0d1232),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              )),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                onPressed: () {
                 var reasult = weight / pow(val / 100, 2);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                              male: male, val: val, weight: weight, age: age,reasult:reasult.round())));
                },
                child: Text("check Your BMI",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
                color: Color.fromARGB(255, 236, 4, 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
        ));
  }
}
