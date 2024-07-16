import 'package:bookly_app/features/home/peresentation/views/widgets/book_details_view/Book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
