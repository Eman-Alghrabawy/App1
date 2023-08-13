import 'package:app_e/Widgets_Reuseable/category_container.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        for (int i = 0; i < 3; i++)
          CategoryContainer(
            index: i,
          ),
      ]),
    );
  }
}
