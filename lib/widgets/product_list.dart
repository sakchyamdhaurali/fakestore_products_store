import 'package:fakestore_products_store_app/models/products_model.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<Products> products;
  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2/3
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {

      },
    );
  }
}
