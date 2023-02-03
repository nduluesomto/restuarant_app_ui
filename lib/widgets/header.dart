import 'package:flutter/material.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
              text: "Food",
              style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              children: [
                TextSpan(
                  text: " Craft",
                  style: TextStyle(
                      color: AppColors.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ]),
        ),
        const SizedBox(height: 5),
        const Text(
          'Good morning Somto',
          style: TextStyle(color: AppColors.grey, fontSize: 15),
        )
      ],
    );
  }
}
