import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class IconRowWidget extends StatelessWidget {
  final String location;
  final String rating;
  final String time;
  const IconRowWidget(
      {Key? key,
      required this.location,
      required this.rating,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          const Icon(Icons.location_on_outlined, color: AppColors.secondary),
          Text(location, style: const TextStyle(fontWeight: FontWeight.w500))
        ]),
        Row(children: [
          const Icon(Icons.star, color: AppColors.secondary),
          Text('$rating/5', style: const TextStyle(fontWeight: FontWeight.w500))
        ]),
        Row(
          children: [
            const Icon(Icons.timer_outlined, color: AppColors.secondary),
            Text('$time mins',
                style: const TextStyle(fontWeight: FontWeight.w500))
          ],
        )
      ],
    );
  }
}
