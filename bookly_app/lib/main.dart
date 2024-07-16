
import 'package:bookly_app/features/home/peresentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constans.dart';
import 'features/home/peresentation/views/widgets/book_details_view/book_details_view.dart';
import 'features/search/presentation/views/search_views.dart';

void main() {
  runApp( BooklyApp());
}

class BooklyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
    //  home: SplashView(),
            routes: {
              '/': (context) => SplashView(),
              '/home': (context) => HomeView(),
              '/details': (context) => BookDetails(),
              '/search': (context) => SearchView(),
      },
initialRoute: '/',


    );
  }
}

