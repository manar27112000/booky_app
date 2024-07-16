import 'package:flutter/material.dart';

import 'cusomContainer.dart';
import 'customCircularImage.dart';

class CustomRow extends StatelessWidget {
  TextDirection scrollDirection;
  String title;
  String image;
CustomRow(  {required this.scrollDirection,required this.image,required this.title});

@override
  Widget build(BuildContext context) {
    return      Row(
      textDirection: scrollDirection,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomContainer(title),
         SizedBox(width:  10,),
        CustomCircularImage(image:  AssetImage(image,),
          radius: 25, padding: const EdgeInsets.symmetric(vertical: 5),),


      ],);
  }
}
