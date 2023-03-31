import 'package:flutter/material.dart';
import 'package:flutter_application_1/hivelog/Screen/signUp.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(){
  
}

class Login extends StatelessWidget {
  
  final pass =TextEditingController();
  final email=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: email,
          decoration: InputDecoration(hintText: 'username')
        ),
        SizedBox(height: 30,),
TextField(
          controller: pass,
          decoration: InputDecoration(hintText: 'password')
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){

        }, child: Text("Login")),
        TextButton(onPressed: (){
      Get.to(()=>Regpage());
        }, child: Text("NOt a user regiser here"))
        
        
      ],),
    );
  }
}