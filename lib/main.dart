import 'package:flutter/material.dart';
import './widgets/user_Transactions.dart';
import 'package:expense/widgets/user_Transactions.dart';

void main() {
  runApp(ExpenseApp());
}

class ExpenseApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Expense App')),
            body: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    color: Colors.blueAccent,
                    child: Text('This is a Chart'),
                  ),
               UserTransactions(),
                ],
              ),
            )));
  }
}
 