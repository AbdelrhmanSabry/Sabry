import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserModel{
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
});
}
class UsersScreen extends StatelessWidget {
  List<UserModel> users =
  [
    UserModel(id: 1, phone: "01099410153" , name: "Sabry"),
    UserModel(id: 2, phone: "64654654564" , name: "Abbdelrhman"),
    UserModel(id: 3, phone: "53535354345" , name: "Hello"),
    UserModel(id: 4, phone: "35437877878" , name: "Sayed"),
    UserModel(id: 5, phone: "2125272727" , name: "Boda"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>BuildUsers(users[index])
          , separatorBuilder:(context,index)=> Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          )
          , itemCount: users.length)
    );
  }

  Widget BuildUsers(UserModel user)=>Padding(
    padding: const EdgeInsets.all(9.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text("${user.id}",style: TextStyle(
              fontSize: 20.0
          ),),
        )
        ,SizedBox(width: 10.0,)
        ,Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
          Text("${user.name}",style: TextStyle(
              fontSize: 20.0
          ),),
          Text("${user.phone}",style: TextStyle(
              fontSize: 20.0
          ),),
        ],
        )
      ],
    ),
  );
}
