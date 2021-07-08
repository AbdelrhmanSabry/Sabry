import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget
{
@override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(
          Icons.menu ,
        ),
        title: Text("Home",
         ),
        actions: [
          IconButton(
            icon : Icon(Icons.notification_add),
            onPressed: (){
              print("My First App");
            },
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Icon(
                Icons.search
            ),
          ),

        ],
        centerTitle: true,
      ), 
      body: Container(

        width: double.infinity,
        color: Colors.grey,
        child: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(image: NetworkImage(
                    'https://www.ikea.com/cz/en/images/products/smycka-artificial-flower-carnation-dark-lilac__0636966_pe698127_s5.jpg'
                  ),

                  ),
                  Text("Flower",
                  style: TextStyle(
                    backgroundColor: Colors.cyanAccent,
                  ),)
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}