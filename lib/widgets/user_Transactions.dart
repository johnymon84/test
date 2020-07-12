import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';
import '../widgets/new_Transactions.dart';
import '../models/transactions.dart';


class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
      final List<Transactions> _userTransactions = [
    Transactions(id: '1', title: 'Loan', amount: 25.0, date: DateTime.now()),
    Transactions(id: '2', title: 'Grocery', amount: 50.0, date: DateTime.now()),

  ];

  void _addNewTransaction(String txTitle,double txAmount){
    final tx = Transactions(title: txTitle,amount: txAmount,id: DateTime.now().toString(),date: DateTime.now());
    setState(() {
      _userTransactions.add(tx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactioList(_userTransactions),
    ],);
  }
}