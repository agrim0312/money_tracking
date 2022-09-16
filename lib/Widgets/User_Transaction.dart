import 'package:flutter/material.dart';
import '../Models/transaction.dart';
import '../Widgets/transactions_list.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(amount: 100, date: DateTime.now(), title: "My money 1"),
    Transaction(amount: 200, date: DateTime.now(), title: "My money 2"),
  ];

  void _addNewTransaction(String Title , double amount){
    final newTx = Transaction(amount: amount.toInt(), date: DateTime.now(), title: Title);

    setState(() {
      _userTransaction.add(newTx);
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Column(children: [NewTransaction(_addNewTransaction), TransactionList(_userTransaction)]);
  }
}
