import 'package:flutter/material.dart';

class WidgetLifeCycle extends StatefulWidget {
  final int number;
  WidgetLifeCycle(this.number) {
    print('Constructor is called');
  }
  @override
  WidgetLifeCycleState createState() {
    print('create state is called');
    return WidgetLifeCycleState();
  }
}

class WidgetLifeCycleState extends State<WidgetLifeCycle> {
  int num = 0;
  @override
  void initState() {
    super.initState();
    num = widget.number;
    print('initState is called');
  }

  @override
  void didUpdateWidget(WidgetLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget is called');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose is called');
  }

  @override
  Widget build(BuildContext context) {
    print('build method is called');
    return Column(
      children: [
        Text(num.toString()),
        ElevatedButton(
            onPressed: () {
              setState(() => num = num + 1);
            },
            child: const Text('Click Me')),
      ],
    );
  }
}
