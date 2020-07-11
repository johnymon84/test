import 'package:expense/transactions.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(ExpenseApp());
}

class ExpenseApp extends StatelessWidget {
  final List<Transactions> transaction = [
    Transactions(id: '1',title: 'Loan',amount: 25.0,date: DateTime.now()),
    Transactions(id: '2',title: 'Grocery',amount: 50.0,date: DateTime.now()),
   
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title : Text('Expense App')
        ),
        body : Container(
          width: double.infinity,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color:Colors.blueAccent,
                child: Text('This is a card Widget'),
              ),
              Text('This is a text widget',style: TextStyle(backgroundColor: Colors.blueAccent),)
            ],
          ),
        )
      )
    );
  }
}