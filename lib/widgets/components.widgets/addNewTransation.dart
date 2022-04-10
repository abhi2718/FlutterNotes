// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class AddNewTransition extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _addNewTransation;
  AddNewTransition(this._addNewTransation);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text("Add New Transition",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
              decoration:
                  InputDecoration(labelText: "Title", hintText: "Buy SIM .")),
          TextField(
            keyboardType: TextInputType.number,
            controller: amountController,
            decoration:
                InputDecoration(labelText: "Amount", hintText: "500.50"),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: RaisedButton(
              child: Text("Add Transation"),
              onPressed: () {
                _addNewTransation(
                  DateTime.now().toString(),
                  titleController.text,
                  double.parse(amountController.text),
                  DateTime.now(),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
