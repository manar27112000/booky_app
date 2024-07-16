import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.backgroundColor,
    required this.textColor,
     this.borderRadius, required this.text});
 final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){},
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius??BorderRadius.circular(12),

          )
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
           text,style: Styles.textStyle16.copyWith(
            color: textColor,
          fontWeight: FontWeight.w900
          ),
          ),
      ),


    );
  }
}
