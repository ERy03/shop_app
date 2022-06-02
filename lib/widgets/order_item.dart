import 'package:flutter/material.dart';
import '../providers/orders.dart' as ord;
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  final ord.OrderItem order;

  OrderItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "\$${num.parse(order.amount.toStringAsFixed(2))}",
            ),
            subtitle: Text(
              DateFormat('dd MM yyyy hh:mm').format(order.dateTime),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_more),
            ),
          )
        ],
      ),
    );
  }
}
