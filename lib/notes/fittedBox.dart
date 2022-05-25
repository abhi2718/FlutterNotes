import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
      child: const FittedBox(
        fit:BoxFit.fill,
        clipBehavior:Clip.hardEdge,
        child: Text('welcome back Abhishek '),
      ),
    );
  }
}
