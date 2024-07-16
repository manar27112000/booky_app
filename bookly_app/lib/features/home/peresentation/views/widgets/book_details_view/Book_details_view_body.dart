
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../book_rating.dart';
import '../custom_loist_view_item.dart';
import 'book_details_app_bar.dart';
import 'books_action.dart';
import 'similer_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                child: BookDetailsAppBar(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width *.25),
                child: const CustomListViewItem(),
              ),
              const SizedBox(height: 43,),
              const Text('The Jugle Book',style: Styles.textStyle30,),
              const SizedBox(height: 3,),
              Opacity(
                opacity: 0.7,
                child: Text('Rudyard kipling',style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                ),),
              ),
              const SizedBox(height: 18,),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 8,),
              const BooksAction(),
              const Expanded(child: SizedBox(height: 40,)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can also like',style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              const SizedBox(height: 16,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SimilerBooksListView(),
              ),
              const SizedBox(height: 40,),




            ]
        ),
      )],
    );

  }
}

