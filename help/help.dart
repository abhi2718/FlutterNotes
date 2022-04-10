// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_cast
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/transation.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  final List<Transation> transations = [
    Transation(id: "1", title: "Buy Phone", amount: 1000, date: DateTime.now()),
    Transation(id: "2", title: "Buy SIM", amount: 100, date: DateTime.now()),
  ];
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Expenditure')),
        body: Container(
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                          controller: titleController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Title", labelText: "Title")),
                      TextField(
                          controller: amountController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Amount", labelText: "amount")),
                      FlatButton(
                          onPressed: () {
                            print(amountController.text);
                          },
                          child: Text('Add Transation'),
                          textColor: Colors.purple),
                    ],
                  ),
                  width: double.infinity,
                ),
              ),
              ...transations.map((item) {
                return (Container(
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                              child: Text(
                                item.amount.toString(),
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              )),
                              padding: EdgeInsets.all(20)),
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(item.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      )),
                                  Text(DateFormat.yMEd().format(item.date),
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      width: double.infinity,
                    ),
                  ),
                ));
              })
            ],
          ),
          width: double.infinity,
        ));
  }
}
