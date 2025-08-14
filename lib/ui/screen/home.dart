import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/category_button_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/collection_card_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/hero_card_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/search_input_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Center(
          child: Column(
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Store Location",
                style: TextStyle(color: Colors.black26, fontSize: 16),
              ),
              Row(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pin_drop_rounded, color: Colors.red),
                  Text(
                    "Empire Center - USE",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
        actionsPadding: const EdgeInsets.only(right: 13),
        actions: [Icon(Icons.shopping_bag_outlined, color: Colors.black)],
      ),
      body: Column(
        children: [
          SearchInputHomeComponent(),
          const HeroCardHomeComponent(),
          const CategoryButtonHomeComponent(),
          const CollectionCardHomeComponent(),
        ],
      ),
    );
  }
}
