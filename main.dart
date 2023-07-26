import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:well_right/screens/MenuBar/MenuBa.dart';
import 'package:well_right/screens/constants.dart';
import 'package:well_right/screens/home_page.dart';
import 'package:well_right/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.secularOneTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: CustomMenuBar(),
    );
  }
}
