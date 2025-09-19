import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/category_button_home_item.dart';

class CategoryButtonHomeComponent extends StatelessWidget {
  const CategoryButtonHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing:8,
        children: [
          SizedBox(width: 5),
          CategoryButtonHomeItemComponent(name: "All Items"),
          CategoryButtonHomeItemComponent(name: "Latest Arrivals"),
          CategoryButtonHomeItemComponent(name: "Classic Black Hijab"),
          CategoryButtonHomeItemComponent(name: "Modern Hijab"),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}