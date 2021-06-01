import 'package:flutter/material.dart';
import 'package:flutter_app/ListDataItem.dart';
import 'package:flutter_app/api/apiClient.dart';
import 'package:flutter_app/api/data_model/Product.dart';

class Body extends StatefulWidget {
  @override
  State createState() => BodyState();
}

class BodyState extends State<Body> {
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    _getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (_, int index) => ListDataItem(productList[index]),
        itemCount: productList.length,
      ),
    );
  }

  void _getAllProducts() async {
    final products = await ApiClient().getProduct();
    setState(() {
      productList.addAll(products);
    });

    for (int i = 0; i < products.length; i++) {
      print(products[i].name);
    }
  }
}
