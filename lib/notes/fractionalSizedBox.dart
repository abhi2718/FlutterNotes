import 'package:flutter/material.dart';

class MyFractionallySizedBox  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
       color:Colors.blue,
      child:FractionallySizedBox(
        alignment:Alignment.bottomCenter,
        widthFactor: 0.5,
        heightFactor: 0.5,
        child:Container(
          color:Colors.red,
        )
      )
    );
  }
}
