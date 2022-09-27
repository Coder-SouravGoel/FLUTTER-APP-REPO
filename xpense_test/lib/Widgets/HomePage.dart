import 'package:flutter/material.dart';
import 'package:xpense_test/Widgets/chart.dart';

class homePage extends StatelessWidget {
  //const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("XPENCE")),
      body: Column(
        children: [
          chart(),
          newTransaction(),
        ],
      ),
    );
  }
}
