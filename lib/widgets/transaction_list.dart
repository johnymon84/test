import 'package:expense/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transactions.dart';


class TransactioList extends StatelessWidget {
  final List<Transactions> transactions;
  TransactioList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) { 
                      return Card(
                          child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade600),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '\$${e.amount}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                e.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.grey.shade800),
                              ),
                              Text(
                                DateFormat().add_yMMMd().format(e.date),
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ));
                    }).toList()
      
    );   
  }
}