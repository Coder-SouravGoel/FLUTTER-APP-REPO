import 'package:flutter/material.dart';

class chart extends StatelessWidget {
  //const chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      child: Card(
        child: Text("I AM CHART"),
        elevation: 6,
      ),
    );
  }
}
