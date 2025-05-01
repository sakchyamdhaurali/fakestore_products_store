import 'dart:convert';

import 'package:fakestore_products_store_app/models/products_model.dart';
import 'package:http/http.dart' as http;

class ProductsService {
  final String _baseUrl = "https://fakestoreapi.com/products";

  Future<List<Products>> getProducts() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body.toString());
     return data.map((item) => Products.fromJson(item)).toList();

    }
    else {
      throw Exception("Failed to load products");
    }
  }
}
