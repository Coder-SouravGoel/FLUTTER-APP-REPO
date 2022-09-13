import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("PRACTISE"),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 20.0,
          ),
          Text('Hello World')
        ]),
      ),
    );

  }
}
