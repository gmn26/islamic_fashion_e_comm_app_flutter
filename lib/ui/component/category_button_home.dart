import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/category_button_item.dart';

class CategoryButtonHomeComponent extends StatefulWidget {
  const CategoryButtonHomeComponent({super.key});

  @override
  State<CategoryButtonHomeComponent> createState() => _CategoryButtonHomeComponentState();
}

class _CategoryButtonHomeComponentState extends State<CategoryButtonHomeComponent> {
  String activeMenu = "All Items";

  void _handleActiveMenuChange (String val) {
    setState(() {
      activeMenu = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing:8,
        children: [
          SizedBox(width: 5),
          CategoryButtonItemComponent(name: "All Items", activeMenu: activeMenu, handleActiveMenuChange: _handleActiveMenuChange),
          CategoryButtonItemComponent(name: "Latest Arrivals", activeMenu: activeMenu, handleActiveMenuChange: _handleActiveMenuChange),
          CategoryButtonItemComponent(name: "Classic Black Hijab", activeMenu: activeMenu, handleActiveMenuChange: _handleActiveMenuChange),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}