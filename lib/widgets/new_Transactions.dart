import 'package:flutter/material.dart';


class NewTransaction  extends StatefulWidget {
  final Function addNewTransaction ;
  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleInputController = TextEditingController();

  final amountInputController = TextEditingController();

  void submitted(){
    final titleInput = titleInputController.text;
    final amountInput = amountInputController.text;
    if (titleInput.isEmpty || double.parse(amountInput)  <=0 ){
      return;
    }
    widget.addNewTransaction(titleInputController.text,double.parse(amountInputController.text)); 
    Navigator.of(context).pop();
  }

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
                            onSubmitted: (_)=>submitted(),
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Amount'),
                            controller: amountInputController,
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                              onSubmitted: (_)=>submitted(),
                          ),
                          FlatButton(
                            onPressed: submitted,
                            child: Text('Add Transacrions'),
                            textColor: Colors.grey.shade900,
                          )
                        ],
                      ),
                    ),
                  );
  }
}