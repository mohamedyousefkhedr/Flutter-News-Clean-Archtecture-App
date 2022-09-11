import 'package:flutter/material.dart';

class AppTheme {
  //for The Light Mood
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: Colors.amber[100],
      appBarTheme:
          AppBarTheme(elevation: 0, backgroundColor: Colors.amber[100]),
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      fontFamily: 'IBM',
    );
  }

//for The Dark Mood
  static ThemeData get dark {
    return ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 31, 25, 8),
      appBarTheme: AppBarTheme(
          elevation: 0, backgroundColor: Color.fromARGB(255, 31, 25, 8)),
      primaryColor: Colors.amber[100],
      accentColor: Colors.yellow,
      splashColor: Colors.amber[100],
      fontFamily: 'IBM',
    );
  }
}
