import 'package:bookly_app/features/home/peresentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    //  shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context,index){
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: BestSellerListViewItem(),
      );
    });
  }
}
