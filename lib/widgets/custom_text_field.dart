import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({this.hintText , this.onChanged});
   Function(String)? onChanged;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data!.isEmpty){
          return 'field is required';
        }
      },
      onChanged:onChanged ,
        decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Color(0xffb77158),
      )),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xff845646))),
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Color(0xffe37e5a),
      )),
    ));
  }
}
