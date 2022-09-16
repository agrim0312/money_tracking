import 'package:flutter/material.dart';
import '../Models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions = [];

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...transactions.map((e) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  child: Text("\₹ ${e.amount}"),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.lightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(e.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent)),
                    Text(
                      DateFormat.MMMd().format(e.date),
                      style: TextStyle(color: Colors.black26),
                    )
                  ],
                )
              ]),
            ),
          );
        })
      ],
    );
  }
}
