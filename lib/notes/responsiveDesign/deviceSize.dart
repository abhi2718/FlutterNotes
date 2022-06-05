import 'package:flutter/material.dart';

class ResponsiveDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Text('Device height is ${MediaQuery.of(context).size.height}'),
      ),
      Container(
        child: Text('Device width is ${MediaQuery.of(context).size.width}'),
      ),
      Container(
        child: Text('Appbar height is ${AppBar().preferredSize.height}'),
      ),
      Container(
        child:
            Text('Statusbar height is ${MediaQuery.of(context).padding.top}'),
      ),
      Container(
        height: 600,
        child: LayoutBuilder(builder: ((context, constraints) {
          return Container(
            color: Colors.red,
            child: FittedBox(child: Text('The max height is ${constraints.maxHeight},The max width is ${constraints.maxWidth}'),)
          );
        })),
      )
    ]);
  }
}
