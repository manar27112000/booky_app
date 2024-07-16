import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
String text;
CustomContainer(this.text);
  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/background.png"),
            fit: BoxFit.cover,),
          color: Colors.white,
          border: Border.all(width: 1,color: Colors.white),
          borderRadius: BorderRadius.circular(50)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 12),
        child: Text(text,style: TextStyle(color: Colors.white,),),
      ),
    );
  }
}
