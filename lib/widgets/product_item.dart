import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/product_controller.dart';
import '../Models/product.dart';
import '../main.dart';

class ProductItem extends StatelessWidget {
   ProductItem({Key? key,required this.product,required this.index}) : super(key: key);
  final Product product;
  final ProductController productController = Get.find();
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){productController.changProduct(index);},
          child: SizedBox(
            height:300,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 200,
                      decoration:  BoxDecoration(
                        image: DecorationImage(image: AssetImage(product.url),fit: BoxFit.cover),
                        borderRadius:  const BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(product.title,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16,),),
                )
              ],
            ),
          ),
        );
  }
}
