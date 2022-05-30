import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () => print("favorite"),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () => print("shopping cart"),
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
