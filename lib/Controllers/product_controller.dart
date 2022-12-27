import 'package:get/get.dart';
import '../Models/product.dart';

class ProductController extends GetxController {
   Product? product;
   List<Product>products = [
     Product(1, 'Women','assets/images/Image 6.png'),
     Product(2, 'Men','assets/images/Image 6.png'),
     Product(3, 'Girls','assets/images/Image 6.png'),
     Product(4, 'Women','assets/images/Image 6.png'),
     Product(5, 'Men','assets/images/Image 6.png'),
     Product(6, 'Girls','assets/images/Image 6.png'),
   ];
  var loading = false.obs;

  @override
  void onInit() async {
    //await   changProduct(product);
    product = products[0];
    update();
    super.onInit();
  }

   Future<void> changProduct(index) async {
    loading.value = true;
    product =  products[index];
    update();
    loading.value = false;
  }
}
