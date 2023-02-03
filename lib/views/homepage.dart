import 'package:flutter/material.dart';
import 'package:restuarant_app_ui/widgets/products_card.dart';
import 'package:restuarant_app_ui/widgets/title_widget.dart';

import '../widgets/category_button.dart';
import '../widgets/header.dart';
import '../widgets/promo_banner.dart';
import '../widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Header(),
                SizedBox(height: 30),
                SearchWidget(),
                SizedBox(height: 20),
                CategoryButton(),
                SizedBox(height: 30),
                TitleWidget(title: "Promo", isSee: true),
                SizedBox(height: 10),
                PromoWidget(),
                SizedBox(height: 30),
                TitleWidget(title: 'Hot Menu This week', isSee: false),
                SizedBox(height: 20),
                ProductCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
