import 'package:flutter/material.dart';

class MyDeviceOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Container(
        child: const Text(
            'The device orientation is portrait'),
      );
    } else {
      return const Text('The device orientation is landscape');
    }
  }
}
