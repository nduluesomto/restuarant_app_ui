import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool isSee;
  const TitleWidget({Key? key, required this.title, required this.isSee})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
        isSee == true
            ? const Text(
                'See All',
                style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              )
            : Container(),
      ],
    );
  }
}
