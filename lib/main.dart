import 'package:flutter/material.dart';
import './widgets/screen.widgets/homeScreen.dart';

void main() => runApp(_App());

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Expenditure"),
      ),
      body: HomeScreen(),
    ),
    );
  }
}
