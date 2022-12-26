import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/product_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Browse Products',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProducts(),
    );
  }
}
class MyProducts extends StatelessWidget {
   MyProducts({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold (


    );
  }
}

