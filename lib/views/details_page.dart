import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restuarant_app_ui/controllers/app_controller.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';
import 'package:restuarant_app_ui/widgets/details_header.dart';

import '../widgets/divider_widget.dart';
import '../widgets/product_details_widget.dart';

class DetailsPage extends StatelessWidget {
  final int index;
  const DetailsPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.find();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child:
                const Icon(Icons.arrow_back_ios, color: AppColors.background)),
        title: Text(
          '${controller.list[index].name}\'s Details',
          style: const TextStyle(
              color: AppColors.background,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          DetailsHeader(image: controller.list[index].imageUrl),
          const SizedBox(height: 15),
          const DividerWidget(),
          ProductDetailsWidget(
            productName: controller.list[index].name,
            price: controller.list[index].price,
            rating: controller.list[index].rating,
            location: controller.list[index].location,
            time: controller.list[index].time,
            desc: controller.list[index].desc,
            index: index,
          ),
        ]),
      ),
    );
  }
}
