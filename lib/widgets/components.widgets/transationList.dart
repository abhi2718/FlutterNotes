import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/transation.dart';

class TransationList extends StatelessWidget {
  final List<Transation> transations;
  TransationList(this.transations);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...transations.map((item) {
                return (Container(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                              child: Text(
                                item.amount.toString(),
                                style: const TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              )),
                              padding: const EdgeInsets.all(20)),
                          Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(item.title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      )),
                                  Text(DateFormat.yMEd().format(item.date),
                                      style: const TextStyle(color: Colors.grey)),
                                ],
                              )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      width: double.infinity,
                    ),
                  ),
                ));
              })
      ],
    );
  }
}
