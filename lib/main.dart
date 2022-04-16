// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './widgets/screen.widgets/homeScreen.dart';
import './models/transation.dart';
import './widgets/components.widgets/addNewTransation.dart';

void main() => runApp(
    MediaQuery(data: const MediaQueryData(), child: MaterialApp(home: _App())));

class _App extends StatefulWidget {
  @override
  State<_App> createState() {
    return _AppState();
  }
}

class _AppState extends State<_App> {
  final List<Transation> _transations = [];
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  double amount = 0;
  String title = '';
  void _addNewTransation(
      String id, String title, double amount, DateTime date) {
    Transation newTxt =
        Transation(id: id, title: title, amount: amount, date: date);
    setState(() {
      _transations.add(newTxt);
      amount = 0;
      title = '';
    });
  }

  void openBottomModalSheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return Container(
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  const Text("Add New Transition",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  TextField(
                      controller: titleController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          labelText: "Title", hintText: "Buy SIM .")),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: amountController,
                    decoration: const InputDecoration(
                        labelText: "Amount", hintText: "500.50"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      child: const Text("Add Transation"),
                      onPressed: () {
                        if (amountController.text == '') {
                          amount = 0;
                        }else{
                           amount = double.parse(amountController.text);
                        }
                        title = titleController.text;
                        if (title == '') {
                          return;
                        }

                        if (amount <= 0) {
                          return;
                        }
                        _addNewTransation(
                          DateTime.now().toString(),
                          title,
                          amount,
                          DateTime.now(),
                        );
                        amountController.text = '';
                        titleController.text = '';
                      },
                    ),
                  )
                ]),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenditure"),
        actions: [
          IconButton(
            onPressed: () {
              openBottomModalSheet(context);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreen(transations: _transations),
            //AddNewTransition(_addNewTransation),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomModalSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
