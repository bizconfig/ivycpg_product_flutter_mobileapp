import 'package:flutter/material.dart';
import '../controls/ivy-form-control.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}
String loginId='',password='';
class LoginScreenState extends State<LoginScreen> {
 final formKey=GlobalKey<FormState>();
  Widget build(context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key:formKey,
          child: Column(
            children: <Widget>[
              ivyMaterializeTextbox('Enter Email',loginId,hintText:'abc@aa.com',keybordInputType:TextInputType.emailAddress),              
              ivyMaterializeTextbox('Password',password,hintText:'Password',isPassword: true),
              Container(margin: EdgeInsets.only(top:20.0)),
              ivyRaisedButton('Submit',FnLogin)
            ],
          ),
        ));
  }
}

void FnLogin()
{
 print('you have entered $loginId and $password');
}