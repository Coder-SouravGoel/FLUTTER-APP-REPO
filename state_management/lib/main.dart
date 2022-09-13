import 'package:flutter/material.dart';
import './screens/product_overview_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myShop',
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.deepOrange,
      ),
      home: ProductOverviewScreen(),
    );
  }
}
