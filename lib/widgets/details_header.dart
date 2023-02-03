import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DetailsHeader extends StatelessWidget {
  final String image;
  const DetailsHeader({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 320,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
      Container(
        height: 230,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.primary, AppColors.primary.withOpacity(0)])),
      )
    ]);
  }
}
