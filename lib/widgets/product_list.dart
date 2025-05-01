import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
const ProductList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        ),
      itemBuilder: (context, index) {
        
      },
    );
  }
}