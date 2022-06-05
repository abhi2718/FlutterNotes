import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height : 200,
      width : 200,
      child: Container(
        color : Colors.blue,
        child:Text('Sized Box'),
      ),
    );
  }
}
