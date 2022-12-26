import 'package:flutter/material.dart';

import '../Models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key,required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
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
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(product.title,style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold,fontSize: 16,),),
        )
      ],
    );
  }
}
