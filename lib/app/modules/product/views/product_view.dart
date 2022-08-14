import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          controller.mainProductList[2].category.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
