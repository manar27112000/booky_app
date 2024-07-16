import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class customTextField extends StatelessWidget {
Widget icon;
String hintText;
TextInputType type;

customTextField({required this.icon,required this.hintText,required this.type});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: TextFormField(
        cursorColor: kmainColor,
        keyboardType: type,
        decoration: InputDecoration(
          //   label: Text('Email Adresess'),
          hintText: hintText,
          prefixIcon: icon,
          filled: true,
          fillColor: kSecondaryColor,
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white,

              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),
        ),
      ),
    );
  }
}
