import 'package:flutter/material.dart';
import 'package:xpense/widget/user_transaction.dart';

class MyHomePage extends StatelessWidget {
/*   const MyHomePage({Key key}) : super(key: key); */

  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Xpense")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Card(
                child: Text("Chart"),
                elevation: 5,
              ),
            ),
            UserTransactions(),
          ]),
    );
  }
}
