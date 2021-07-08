import 'package:flutter/material.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/massenger_design.dart';
import 'package:untitled/screen_model.dart';
import 'bmi_culcoultor.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCulcoltor(),
    );
  }

}
