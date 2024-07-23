import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool male;
  final double val;
  final int weight;
  final int age;
  final int reasult;
  
  const Result({
    Key? key,
    required this.male,
    required this.val,
    required this.weight,
    required this.age,
    required this.reasult,
    
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff0d1232),
        appBar: AppBar(
          title: Text("BMI_Result", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff0d1232),
        iconTheme: IconThemeData(color: Colors.white),
        
      
        ),
        body: Padding(
         
          padding: const EdgeInsets.all(20.1),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xff252a48),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Gender :",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          Text(male ? "  Male" : "  Female",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      ))),
              Center(
                  child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xff252a48),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Reasult :",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          Text(reasult.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ],),
              )),
              Center(
                  child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xff252a48),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age :",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          Text(age.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      ))),
            ],
          ),
        ));
  }
}
