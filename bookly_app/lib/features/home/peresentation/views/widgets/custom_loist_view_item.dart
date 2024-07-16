import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2/3,
      child: Container(
        //  width: MediaQuery.of(context).size.height*.2,
        // height: MediaQuery.of(context).size.height*.3,
        decoration:  BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                fit:BoxFit.fill,
                image: AssetImage(AssetsData.test_image))),


      ),
    );
  }
}
