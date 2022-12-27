import 'package:compiler_test/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/product_controller.dart';

void main() {
  runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProducts(),);}}
class MyProducts extends StatelessWidget {
   MyProducts({Key? key}) : super(key: key);
 final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(centerTitle: true,
      title: const Text("My Products"),),
      body: SizedBox(
        child: GetBuilder(
          init: productController,
          builder: (context) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                      width: Get.width/2,
                      height: Get.height,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount:productController.products.length,
                        itemBuilder: (context, index) {
                          return ProductItem(product: productController.products[index],index:index,);
                        },),),
                SizedBox(
                    width: Get.width/2,
                    child:
                    Column(
                      children: [
                        ProductItem(product:productController.product!, index: 0),
                        const SizedBox(height: 20,),
                        Column( mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(" our pullover features a relaxed fit, is lightweight, and perfect for layering, making it a true year-round option. The raglan sleeve detail adds a sporty edge to our already versatile pullover. Pair it with our Brushed Bamboo Joggers or your favorite pair of jeans or leggings.",
                              style: TextStyle(color: Colors.grey,fontSize: 16),),
                            )],)],),),],);}),));}
}

