import 'package:get/get.dart';

import '../utils/app_data.dart';

class AppController extends GetxController {
  var isSelect = 0.obs;
  var list = foodList.obs;
  RxInt totalQuantity = 0.obs;
  var cart = [].obs;

  isSelected(int index) {
    isSelect.value = index;
  }

  removeProduct(int index) {
    if (totalQuantity.value != 0) {
      totalQuantity--;
    }
  }

  addProduct(int index) {
    totalQuantity.value++;
  }

  addToCart(int index) {
    if (totalQuantity.value == 1) {
      totalQuantity.value + 1;
      cart.add(totalQuantity.value);
      Get.snackbar("Success", "Product added to cart");
    }
    if (totalQuantity.value == 0) {
      totalQuantity.value++;
      cart.add(totalQuantity.value);
      Get.snackbar("Success", "Product added to cart");
    }
    if (totalQuantity.value > 1) {
      cart.add(totalQuantity.value);
      Get.snackbar("Success", "Product quantity increased in cart");
    }
  }
}
