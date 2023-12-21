import 'package:flutter/material.dart';

class FugueTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Colors.blueGrey,
      accentColor: Colors.amber,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Georgia',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.blueGrey,
        elevation: 0,
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueGrey,
        textTheme: ButtonTextTheme.primary,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
