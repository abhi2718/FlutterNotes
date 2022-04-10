// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_cast
import 'package:flutter/material.dart';

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
              
            ],
          ),
          width: double.infinity,
        ));
  }
}
