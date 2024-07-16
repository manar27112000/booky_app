import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:38),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius:BorderRadius.only(topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)), text: '19.99\$' ,),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEE8262),
              textColor: Colors.white,
              borderRadius:BorderRadius.only(topRight: Radius.circular(12)
                  ,bottomRight: Radius.circular(12)), text: 'Free Preview' ,),
          ),
        ],
      ),
    );
  }
}
