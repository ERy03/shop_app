import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_item.dart';

import '../models/product.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
    required this.loadedProducts,
  }) : super(key: key);

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (context, index) => ProductItem(
        id: loadedProducts[index].id,
        title: loadedProducts[index].title,
        imageUrl: loadedProducts[index].imageUrl,
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
