import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = "/edit-product";
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Title",
                    labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Price",
                    labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
