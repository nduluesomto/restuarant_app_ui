import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restuarant_app_ui/controllers/app_controller.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';
import 'package:restuarant_app_ui/widgets/title_widget.dart';

class PriceWidget extends StatelessWidget {
  final double price;
  final int productId;
  const PriceWidget({Key? key, required this.price, required this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController priceController = Get.find();
    return Column(
      children: [
        const TitleWidget(title: "Price", isSee: false),
        const SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '₽ $price',
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    priceController.removeProduct(productId);
                  },
                  icon: const Icon(Icons.remove)),
              Obx(() => Text(
                    priceController.totalQuantity.toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
              IconButton(
                  onPressed: () {
                    priceController.addProduct(productId);
                  },
                  icon: const Icon(Icons.add)),
            ],
          )
        ]),
        const SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            priceController.addToCart(productId);
          },
          child: Container(
              height: 58,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Add to Cart',
                    style: TextStyle(color: AppColors.background, fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.shopping_cart_outlined,
                      color: AppColors.background, size: 30)
                ],
              )),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
