import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restuarant_app_ui/controllers/app_controller.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    List<String> cat = [
      'Fast Food',
      'Soup',
      'Salads',
      'Desserts',
      'Drinks',
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cat.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                appController.isSelected(index);
              },
              child: Obx(
                () => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.grey),
                      color: appController.isSelect == index
                          ? AppColors.primary
                          : AppColors.background),
                  margin: const EdgeInsets.only(right: 20),
                  child: Center(
                      child: Text(
                    cat[index],
                    style: TextStyle(
                        color: appController.isSelect == index
                            ? AppColors.background
                            : AppColors.primary,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            );
          }),
    );
  }
}
