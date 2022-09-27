/* import 'package:flutter/material.dart';
import 'package:xpense/widget/user_transaction.dart';

class NewTransaction extends StatelessWidget {
  //const NewTransaction({Key key}) : super(key: key);

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(labelText: 'TITLE'),
/*             onChanged: (val) {
              titleInput = val;
            }, */
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'AMOUNT'),
/*             onChanged: (val) {
              amountInput = val;
            }, */
            controller: amountController,
          ),
          TextButton(
            onPressed: (() {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            }),
            child: Text(
              "ADD TRANSACTION",
              style: TextStyle(color: Colors.purple),
            ),
          )
        ]),
      ),
      elevation: 5,
    );
  }
}
 */

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (val) {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              // onChanged: (val) => amountInput = val,
            ),
            TextButton( 
              child: Text('ADD TRANSACTION'),
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
