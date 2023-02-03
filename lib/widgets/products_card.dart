import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restuarant_app_ui/controllers/app_controller.dart';
import 'package:restuarant_app_ui/views/details_page.dart';

import '../utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var food = foodList;
    AppController foodController = Get.find();

    return SizedBox(
      height: 700,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: foodController.list.length,
        itemBuilder: (context, index) {
          return ProductDetails(
            imageUrl: foodController.list[index].imageUrl,
            name: foodController.list[index].name,
            price: foodController.list[index].price,
            rating: foodController.list[index].rating,
            onClicked: () {
              Get.to(() => DetailsPage(index: index));
            },
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final String rating;
  final VoidCallback onClicked;

  const ProductDetails({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(18), boxShadow: [
          BoxShadow(
              color: AppColors.primary.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 12)
        ]),
        child: Column(
          children: [
            Expanded(
              child: Stack(alignment: Alignment.topRight, children: [
                Container(
                  // height: 180,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  top: 10,
                  right: 15,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red.shade600,
                      size: 18,
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style:
                        const TextStyle(color: AppColors.primary, fontSize: 17),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Text(
                          '₽',
                          style: TextStyle(
                              color: AppColors.secondary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 5),
                        Text(price.toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold))
                      ]),
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Colors.orange.shade600, size: 15),
                          Text(rating, style: const TextStyle(fontSize: 14)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
