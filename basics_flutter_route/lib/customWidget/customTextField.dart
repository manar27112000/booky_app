import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child:TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Type a Message',
          hintStyle: TextStyle(color: Colors.white),

          suffixIcon:Icon(Icons.attach_file,color: Colors.white,),
          prefixIcon: Icon(Icons.emoji_emotions_outlined,color: Colors.white,),
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.white,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.white,

              )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.white,

              )
          ),
        ),

      ),
    );
  }
}
