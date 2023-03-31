import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hivelog/Model/model_user.dart';
import 'package:flutter_application_1/hivelog/Screen/login.dart';
import 'package:flutter_application_1/hivelog/Screen/signUp.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';



class Regpage extends StatelessWidget {
  
  final pass =TextEditingController();
  final email=TextEditingController();
  final name= TextEditingController();
  void validatorSing()async{
    final mail= email.text.trim();
    final pwd =pass.text.trim();
    

    final emailvadidato=EmailValidator.validate(mail);
    if(mail!=""&&pwd!=""){
      if(emailvadidato==true){
        final passvalidator=checkPassword(pwd);
        if(passvalidator==true){
          final user = User(email :mail,password:pwd);
        }
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: name,
          decoration: InputDecoration(hintText: 'name')
        ),
        SizedBox(height: 30,),
TextField(
          controller: pass,
          decoration: InputDecoration(hintText: 'username')
        ),
        TextField(
          controller: email,
          decoration: InputDecoration(hintText: 'password')
        ),
       
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){

        }, child: Text("Sign UP")),
        TextButton(onPressed: (){
          Get.to(()=>Login());
        }, child: Text("alrdy user ?"))
        
        
      ],),
    );
  }
  
  checkPassword(String pwd) {
    if (pwd.length <6){
      Get.snackbar("Error", "Password length shuld be greator than 6");
      
    }else{
      return true;
    }
  }
}