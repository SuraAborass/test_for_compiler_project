import 'package:get/get.dart';
import '../Models/product.dart';

class ProductController extends GetxController {
  Product? product;
  List<Product> products = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await changProduct();
    super.onInit();
  }

  Future<void> changProduct() async {
    loading.value = true;
    product = await products[0];
    update();
    loading.value = false;
  }
}
