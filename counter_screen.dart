import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int Counter = 0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("Counter"),
    ),
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: ()   {
            setState(() {
              Counter--;
              print(Counter);
            });
          },
              child: Text("Minus")),
          Text("$Counter",style: TextStyle(fontSize: 20.0),),
          TextButton(onPressed: ()
          {
            setState(() {
              Counter++;
              print(Counter);
            });

          },
              child: Text("Plus"))
        ],
      ),
    ),
    );
  }
}
