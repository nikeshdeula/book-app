import 'package:book_app/pages/home_page.dart';
import 'package:book_app/pages/login_page.dart';
import 'package:book_app/pages/music_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // nikesh branch
      home: HomePage(),
    );
  }
}
