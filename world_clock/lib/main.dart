import 'package:flutter/material.dart';
import 'package:world_clock/pages/home_page.dart';
import 'package:world_clock/pages/loading_page.dart';
import 'package:world_clock/pages/location_choice_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
