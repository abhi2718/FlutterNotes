import 'package:flutter/material.dart';

class MyFlexibleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
         flex: 2,
         fit: FlexFit.tight,
         child: Container(
         width: 100,
         height: 100,
         color: Colors.red
         ),
         )
        ,
        Flexible(
         flex: 1,
         fit: FlexFit.tight,
         child: Container(
         width: 100,
         height: 100,
         color: Colors.blue
         ),
         ),
        Flexible(
         flex: 2,
         child: Container(
         width: 100,
         height: 100,
         color: Colors.green
         ),
         )
      ],
    );
  }
}
