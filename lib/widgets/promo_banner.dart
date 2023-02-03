import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                fit: BoxFit.cover,
                'lib/images/promo-banner.jpg',
                height: height * 0.20,
                width: width,
              )),
          Container(
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withOpacity(0.1)
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: RichText(
              text: const TextSpan(
                  text: 'Get Up To\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  children: [
                    TextSpan(
                        text: '25% Off',
                        style: TextStyle(color: AppColors.secondary))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
