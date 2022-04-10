// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import '../components.widgets/addNewTransation.dart';
import '../../models/transation.dart';
import '../components.widgets/transationList.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Transation> _transations = [
    Transation(id: "1", title: "Buy Phone", amount: 1000, date: DateTime.now()),
    //Transation(id: "2", title: "Buy SIM", amount: 100, date: DateTime.now()),
  ];
  void _addNewTransation(
      String id, String title, double amount, DateTime date) {
    Transation newTxt =
        Transation(id: id, title: title, amount: amount, date: date);
    setState(() => _transations.add(newTxt));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          AddNewTransition(_addNewTransation),
          TransationList(_transations),
        ],
      ),
    );
  }
}
