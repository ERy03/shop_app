import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    //Dummy data
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Nike Shoe',
      description: 'Flaming hot color. Your feet will burn.',
      price: 89.99,
      imageUrl:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    ),
    Product(
      id: 'p6',
      title: 'Dove Body Cream',
      description: 'Rich nourishment. Baby skin here we come.',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1625772452859-1c03d5bf1137?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    ),
    Product(
      id: 'p7',
      title: 'Blue Car',
      description:
          'Lorem ipsum dolor sit amet. Et voluptate quibusdam qui officia quae est rerum cumque qui nihil vitae ea quia nobis ea deserunt enim quo provident quam. Non laborum molestias id esse consectetur et doloremque sint nam nulla eligendi vel quisquam nisi. Aut aliquid sequi sit sint repudiandae ea voluptatibus quasi 33 facilis enim et voluptatem voluptatem ut iusto voluptate cum expedita sint?',
      price: 119.99,
      imageUrl:
          'https://images.unsplash.com/photo-1589320153203-6fef035a72a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1998&q=80',
    ),
    Product(
      id: 'p8',
      title: 'Perfume',
      description:
          'Lorem ipsum dolor sit amet. Et voluptate quibusdam qui officia quae est rerum cumque qui nihil vitae ea quia nobis ea deserunt enim quo provident quam. Non laborum molestias id esse consectetur et doloremque sint nam nulla eligendi vel quisquam nisi. Aut aliquid sequi sit sint repudiandae ea voluptatibus quasi 33 facilis enim et voluptatem voluptatem ut iusto voluptate cum expedita sint?',
      price: 149.99,
      imageUrl:
          'https://images.unsplash.com/photo-1589820832079-9a215961bc96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
