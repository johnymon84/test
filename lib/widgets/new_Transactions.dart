import 'package:flutter/material.dart';


class NewTransaction  extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();
  final Function addNewTransaction ;
  NewTransaction(this.addNewTransaction);
  @override
  Widget build(BuildContext context) {
    return  Card(
                    elevation: 5,
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(labelText: 'Title'),
                            controller: titleInputController,
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Amount'),
                            controller: amountInputController,
                          ),
                          FlatButton(
                            onPressed: () {
addNewTransaction(titleInputController.text,double.parse(amountInputController.text));                            },
                            child: Text('Add Transacrions'),
                            textColor: Colors.grey.shade900,
                          )
                        ],
                      ),
                    ),
                  );
  }
}