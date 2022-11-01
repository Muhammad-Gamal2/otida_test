import 'package:flutter/material.dart';
import 'package:otida_test/utilis/utilis.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Otida Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: "airbnb-cereal",
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
