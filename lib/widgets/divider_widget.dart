import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60,
        height: 4,
        decoration: BoxDecoration(
            color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
