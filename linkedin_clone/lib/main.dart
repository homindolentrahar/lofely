import 'package:flutter/material.dart';
import 'package:linkedin_clone/pages/main_page.dart';
import 'package:linkedin_clone/util/color_palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        canvasColor: ColorPalette.light,
      ),
      home: MainPage(),
    );
  }
}
