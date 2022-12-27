import 'package:get/get.dart';
import '../Models/product.dart';

class ProductController extends GetxController {
   Product? product;
   List<Product>products = [
     Product(1, 'Jeans','assets/images/ab.png'),
     Product(2, "Women's Shirt",'assets/images/avv.png'),
     Product(3, 'Leather Jacket','assets/images/dgbh.png'),
     Product(4, 'skirt','assets/images/nhk.png'),
     Product(5, 'Jacket','assets/images/su.png'),
     Product(6, 'Blouse','assets/images/sv.png'),
   ];
  var loading = false.obs;
  @override
  void onInit() async {
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
