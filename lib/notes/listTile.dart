import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  List list = [
    {"id": "1", "name": "Abhishek Singh", "branch": "B.C.A"}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Text(list[index]["id"]),
            title: Text(list[index]["name"]),
            subtitle: Text(list[index]["branch"]),
            trailing: const Icon(Icons.person),
            selected: true,
            onTap: () {
              print('you tap me');
            },
          );
        }),
        itemCount: list.length,
      ),
    );
  }
}
