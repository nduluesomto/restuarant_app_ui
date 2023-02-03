import 'package:flutter/material.dart';
import 'package:restuarant_app_ui/utils/app_colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.grey)),
      child: const TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
