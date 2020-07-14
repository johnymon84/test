import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transactions.dart';


class TransactioList extends StatelessWidget {
  final List<Transactions> transactions;
  TransactioList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty ?  
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Your List is Empty',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
            Image.network('http://www.pngkey.com/png/full/846-8466599_list-is-empty.png',height: 200.0,),
          ],
        )
        :
        ListView.builder(itemBuilder: (ctx,index){
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
                                '\$${transactions[index].amount.toStringAsFixed(2)}',
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
                                  transactions[index].title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Colors.grey.shade800),
                                ),
                                Text(
                                  DateFormat().add_yMMMd().format(transactions[index].date),
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
      },
      itemCount: transactions.length,
      ),
      
    );   
  }
}