import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/details');
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.6/3,
              child: Container(
                //  width: MediaQuery.of(context).size.height*.2,
                // height: MediaQuery.of(context).size.height*.3,
                decoration:  BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit:BoxFit.fill,
                        image: AssetImage(AssetsData.test_image))),


              ),),
            const SizedBox(width: 20,),
             Expanded(
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                SizedBox(width: MediaQuery.of(context).size.width *.5,
                    child: const Text('Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20,maxLines: 2,
                    overflow: TextOverflow.ellipsis,)),
                 const SizedBox(height: 3,),
                 const Text('J.K. Rowing',style: Styles.textStyle14,),
                    Row(
                     children: [
                       Text('19.99 \$',
                         style: Styles.textStyle20.copyWith(
                             fontWeight: FontWeight.bold)
                       ),
                       Spacer(),
                       BookRating()

                     ],
                   ),
                   const SizedBox(height: 3,),



                 ],),
             )


          ],
        ),
      ),
    );
  }
}

