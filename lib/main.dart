import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';
import './widgets/new_Transactions.dart';
import './models/transactions.dart';

void main() {
  runApp(ExpenseApp());
}




class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transactions> _userTransactions = [
    Transactions(id: '1', title: 'Loan', amount: 25.0, date: DateTime.now()),
    Transactions(id: '2', title: 'Grocery', amount: 50.0, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final tx = Transactions(
        title: txTitle,
        amount: txAmount,
        id: DateTime.now().toString(),
        date: DateTime.now());
    setState(() {
      _userTransactions.add(tx);
    });
  }

  void _startAddNewTransaction(BuildContext cxt) {
    showModalBottomSheet(
      context: cxt,
      builder: (bctx) {
        return NewTransaction(_addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Expense App'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startAddNewTransaction(context),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  color: Colors.blueAccent,
                  child: Text('This is a Chart'),
                ),
                
                TransactioList(_userTransactions),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context)),
      );

  }
}
