import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/peresentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/peresentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../../splash/presentation/views/widgets/custom_appbar.dart';
import 'best_seller_listView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Best Seller',style: Styles.textStyle18,),
              ),
              SizedBox(height: 20,),

            ],) ,
        ),
        SliverFillRemaining(
          child:     Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),

        )
      ],

    );




    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 45,),
        Text('Best Seller',style: Styles.textStyle18,),
          SizedBox(height: 20,),
          BestSellerListView(),

      ],),
    );
  }
}


