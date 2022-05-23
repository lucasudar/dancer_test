import 'package:dantser_flutter/constants.dart';
import 'package:dantser_flutter/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dantser App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: const ColorScheme.light().copyWith(primary: kPrimaryColor),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
