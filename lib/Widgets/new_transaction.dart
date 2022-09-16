import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    var Title = TextEditingController();
    var amount = TextEditingController();

    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "title"),
              controller: Title,
            ),
            TextField(
              decoration: InputDecoration(labelText: "amount"),
              controller: amount,
            ),
            ElevatedButton(
              onPressed: () {
                addTx(
                  Title.text,
                  double.parse(amount.text),
                );
              },
              child: Text("add"),
            ),
          ],
        ),
      ),
    );
  }
}
