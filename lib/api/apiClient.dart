import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/api/data_model/Product.dart';
import 'package:http/http.dart' as http;

import 'apiConfig.dart';

class ApiClient {

  Future<List<Product>> getProduct() async {
    final response = await http.get(Uri.parse(ApiConfig.baseUrl + 'products/'));
    if (response.statusCode == 200) {
      debugPrint(response.body);
      final result = jsonDecode(response.body);
      Iterable list = result['data'];
      return list.map((product) => Product.fromJSON(product)).toList();
    } else {
      throw Exception("Failed to load products");
    }

  }

  getName(){
    debugPrint("Name");
  }

}
