import 'package:flutter/material.dart';
import '../widget/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpense App',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
