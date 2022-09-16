import 'package:flutter/material.dart';
import 'package:money_tracking/Widgets/User_Transaction.dart';
import 'package:money_tracking/Widgets/new_transaction.dart';
import 'package:money_tracking/Widgets/transactions_list.dart';
import './Models/transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Money Tracker"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.blue,
              child: Text("Chart", textAlign: TextAlign.center),
              width: double.infinity,
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
