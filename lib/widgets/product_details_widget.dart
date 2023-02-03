import 'package:flutter/material.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';
import 'package:restuarant_app_ui/widgets/price_widget.dart';
import 'package:restuarant_app_ui/widgets/title_widget.dart';

import 'icon_details_row.dart';

class ProductDetailsWidget extends StatelessWidget {
  final int index;
  final String productName;
  final double price;
  final String rating;
  final String location;
  final String time;
  final String desc;
  const ProductDetailsWidget(
      {Key? key,
      required this.productName,
      required this.price,
      required this.rating,
      required this.location,
      required this.time,
      required this.desc,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: const TextStyle(
                color: AppColors.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),
          IconRowWidget(location: location, rating: rating, time: time),
          const SizedBox(height: 30),
          const TitleWidget(title: "Description", isSee: false),
          const SizedBox(height: 10),
          Text(
              textAlign: TextAlign.justify,
              desc,
              style: const TextStyle(
                  color: Colors.black, height: 1.5, fontSize: 15)),
          const SizedBox(height: 20),
          PriceWidget(price: price, productId: index),
        ],
      ),
    );
  }
}
