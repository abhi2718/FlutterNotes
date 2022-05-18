// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import '../../models/transation.dart';
import '../components.widgets/transationList.dart';

class HomeScreen extends StatelessWidget {
  final List<Transation> transations;
  HomeScreen({required this.transations});
     @override
       Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text("Expenditure List"),
          Container(
            height: 600,
            child: SingleChildScrollView(child: TransationList(transations)),
          ),
        ],
      ),
    );
  }
  }
