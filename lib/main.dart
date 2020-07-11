import 'package:expense/transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseApp());
}

class ExpenseApp extends StatelessWidget {
  final List<Transactions> transaction = [
    Transactions(id: '1', title: 'Loan', amount: 25.0, date: DateTime.now()),
    Transactions(id: '2', title: 'Grocery', amount: 50.0, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Expense App')),
            body: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    color: Colors.blueAccent,
                    child: Text('This is a Chart'),
                  ),
                Column(
                  children: transaction.map((e) {
                    return Card(
                      child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade600),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(e.amount.toString(),style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(e.title,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.grey.shade800
                            ),),
                            Text(e.date.toString(),style: TextStyle(
                              color : Colors.grey.shade700,
                            ),),
                          ],
                        ),
                      ],
                      )
                    );
                  }).toList(),
                )
                ],
              ),
            )));
  }
}
