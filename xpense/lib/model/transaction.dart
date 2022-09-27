import 'package:flutter/foundation.dart';

class Transaction {
  //final is run time constant that is they get their value when created and thereafter never changes
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    //required is a decorator introduced by flutter and and is under foundation.dart folder
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
