import 'package:compiler_test/Models/product.dart';
import 'package:compiler_test/widgets/product_item.dart';
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
    final deviceSize=MediaQuery.of(context).size;
    return Scaffold (
      body: SizedBox(
        width: deviceSize.width,
        height: deviceSize.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            return ProductItem(product: productController.products[index],);
          },

        ),
      ),


    );
  }
}

