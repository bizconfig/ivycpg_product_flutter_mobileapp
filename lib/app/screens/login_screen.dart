import 'package:flutter/material.dart';
import '../controls/ivy-form-control.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

final TextEditingController _loginIdController = new TextEditingController();
final TextEditingController _passwordController = new TextEditingController();

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:
      //  new ListView(
      //   children:<Widget>[ 
          new Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    "images/login_bg.png",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                new Container(
                  child: new Form(
                    key: formKey,
                    child: new Column(                 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      ivyMaterializeTextbox('Enter Email', _loginIdController,
                          hintText: 'abc@aa.com',
                          keybordInputType: TextInputType.emailAddress),
                      ivyMaterializeTextbox('Password', _passwordController,
                          hintText: 'Password', isPassword: true),
                      Container(margin: EdgeInsets.only(top: 20.0)),
                      ivyRaisedButton('Submit', FnLogin)
                    ]),
                  ),
                )
              ],
            ),
      //   ],
      // )
    );
  }
}

void FnLogin() {
  print(
      'you have entered ${_loginIdController.text} and ${_passwordController.text}');
}
