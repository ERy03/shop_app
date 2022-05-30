import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider(
        create: (context) => products[index],
        child: ProductItem(),
        // id: products[index].id,
        // title: products[index].title,
        // imageUrl: products[index].imageUrl,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Control how many items you want across the grid
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10, // vertical space between columns
        mainAxisSpacing: 10, // Horizontal space between rows
      ),
    );
  }
}
