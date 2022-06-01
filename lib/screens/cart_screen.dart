import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      "\$${cart.totalAmount}",
                    ),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "ORDER NOW",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
