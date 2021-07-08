import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bim_result.dart';

class BmiCulcoltor extends StatefulWidget {

  @override
  _BmiCulcoltorState createState() => _BmiCulcoltorState();
}

class _BmiCulcoltorState extends State<BmiCulcoltor> {
  bool IsMale = true;
  double height = 120 ;
  int weight = 40 ;
  int age = 20;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""
            "BMI"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            IsMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: IsMale ? Colors.blue :Colors.grey[400]
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image:AssetImage("images/male.png")
                              ,height: 90.0, width: 90.0,)
                              ,Text("MALE",style: TextStyle(
                                fontSize: 40.0
                                ,fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.0,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            IsMale =false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: IsMale ? Colors.grey[400]:Colors.blue
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image:AssetImage("images/female.png")
                                ,height: 90.0,width: 90.0,)
                              ,Text("FEMALE",style: TextStyle(
                                  fontSize: 40.0
                                  ,fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height",style: TextStyle(
                        fontSize: 40.0
                        ,fontWeight: FontWeight.bold
                    ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()}",style: TextStyle(
                            fontSize: 40.0
                            ,fontWeight: FontWeight.w900
                        ),),
                        SizedBox(height: 10.0,)
                        ,Text("CM",style: TextStyle(
                            fontSize: 15.0
                            ,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 250.0,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                        }
                        )
                  ],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",style: TextStyle(
                              fontSize: 40.0
                              ,fontWeight: FontWeight.bold
                          ),),
                          Text("$age",style: TextStyle(
                              fontSize: 40.0
                              ,fontWeight: FontWeight.w900
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              mini: true,
                              heroTag: "age-",
                              child: Icon(
                                Icons.remove
                              ),),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                                heroTag: "age+",
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,)
                  ,Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight",style: TextStyle(
                              fontSize: 40.0
                              ,fontWeight: FontWeight.bold
                          ),),
                          Text("$weight",style: TextStyle(
                              fontSize: 40.0
                              ,fontWeight: FontWeight.w900
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                                heroTag: "weight-",
                                mini: true,
                                child: Icon(
                                    Icons.remove
                                ),),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                                heroTag: "weight+",
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(onPressed: (){
              setState(() {
               double result = weight/pow(height/100,2);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BimResult(age: age,IsMale: IsMale,result: result.round(),),),);
              });
            }
            ,color: Colors.blue
            ,child: Text("Calculate",style: TextStyle(fontSize: 20.0,),),
            ),
          )
        ],
      ),
    );
  }
}
