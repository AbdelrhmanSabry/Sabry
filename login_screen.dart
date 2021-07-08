import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.login
        ),
        title: Text(
          "Login Screen",
          style: TextStyle(

          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Login",
                style: TextStyle(
                  fontSize: 40.0
                  ,fontWeight: FontWeight.bold

                ),),
                SizedBox(
                  height: 20.0,
                )
                ,TextFormField(
                  controller: emailController ,
                   keyboardType: TextInputType.emailAddress
                  ,decoration: InputDecoration(
                    //hintText: "Enter Your Email Address"
                    labelText :"Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email
                    ),

                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
/*              onChanged: (String value){
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  onFieldSubmitted: (String value){
                    print(value);
                  }*/
                  decoration: InputDecoration(
                  //hintText: "Enter Your Email Address"
                  labelText :"Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                      Icons.lock
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye
                  ),

                ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  //width: double.infinity,
                  color: Colors.cyanAccent,
                  child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordController.text);
                  },
                    child: Text(
                      "LOGIN"
                    ),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account?"
                  ),
                  TextButton(onPressed: (){}, child: Text(""
                      "Register Now"),
                  )
                ],
              )
              ],

            ),
          ),
        ),
      ),

    );
  }
}
