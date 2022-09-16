import 'package:flutter/material.dart';

class Transaction {
  String title;
  DateTime date = DateTime.now();
  int amount;

  Transaction({ required this.amount,required this.date,required this.title});

}