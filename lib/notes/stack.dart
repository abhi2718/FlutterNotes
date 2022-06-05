import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:390,
      height:600,
      color:Color.fromARGB(255, 134, 110, 41),
      child: Stack(
      alignment: Alignment.topRight,
      overflow: Overflow.visible,
      fit : StackFit.loose,
      children: [
         Container(
           width:200,
           height:200,
           color: Colors.red,
         ),
         Container(
           width:100,
           height:100,
           color: Colors.green,
         ),
         Positioned(
           bottom: -20,
           height:150,
           child: Container(
           width:100,
           height:100,
           color: Colors.blue,
         )),
      ],
    ),
    );
  }
}
