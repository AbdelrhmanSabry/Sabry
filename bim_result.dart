import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BimResult extends StatelessWidget {

  final int result;
  final bool IsMale;
  final int age;
  BimResult({
    required this.age,
    required this.IsMale,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bim Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender:${IsMale ? "Male" : "Female"}",style: TextStyle(
              fontSize: 25.0
              ,fontWeight: FontWeight.bold
            ),)
            ,Text("Result:$result",style: TextStyle(
                fontSize: 25.0
                ,fontWeight: FontWeight.bold
            ),)
             ,Text("age:$age",style: TextStyle(
                fontSize: 25.0
                ,fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
