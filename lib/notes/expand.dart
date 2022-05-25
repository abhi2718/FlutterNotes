import 'package:flutter/material.dart';

class MyExpand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.blue
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red
        ),
       Expanded(
         child:  Container(
          width: 100,
          height: 100,
          color: Colors.green
        ),
       )
      ],
    );
  }
}
