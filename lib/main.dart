import 'package:flutter/material.dart';
import 'package:pt_mercadolibre_mob/constants.dart';
import 'package:pt_mercadolibre_mob/src/features/search_page/search_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Tecnica Mercado Libre',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
      ),


      home: searchPage(),
    );
  }
}

 