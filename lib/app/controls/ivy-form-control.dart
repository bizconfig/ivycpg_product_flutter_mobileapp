import 'package:flutter/material.dart';
import '../models/control.dart';

Widget ivyMaterializeTextbox(String labelText, TextEditingController _controllerName,{String hintText = '',bool isPassword = false,TextInputType keybordInputType = TextInputType.text}) {
  return TextFormField(
    controller: _controllerName,
    keyboardType: keybordInputType,
    obscureText: isPassword,
    decoration: InputDecoration(labelText: labelText, hintText: hintText),
    validator: (String value) {
      if(value=='')
      {
        return 'Please Enter Value';
      }
    },
  );
}

Widget ivyRaisedButton(String buttonText, Function fnCallback) {
  return RaisedButton(
    child: Text(buttonText),
    onPressed: fnCallback,
  );
}
