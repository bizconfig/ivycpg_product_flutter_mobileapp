import 'package:flutter/material.dart';
import '../models/control.dart';

Widget ivyMaterializeTextbox(String labelText, String valueKey,{String hintText = '',bool isPassword = false,TextInputType keybordInputType = TextInputType.text}) {
  return TextFormField(
    keyboardType: keybordInputType,
    obscureText: isPassword,
    decoration: InputDecoration(labelText: labelText, hintText: hintText),
    validator: (String value) {
      if(value=='')
      {
        return 'Please Enter Value';
      }
    },
    onSaved: (String value){
      valueKey=value;
    },
  );
}

Widget ivyRaisedButton(String buttonText, Function fnCallback) {
  return RaisedButton(
    child: Text(buttonText),
    onPressed: fnCallback,
  );
}
