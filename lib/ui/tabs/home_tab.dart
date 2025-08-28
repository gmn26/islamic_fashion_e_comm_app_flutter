import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/category_button_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/collection_card_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/hero_card_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/search_input_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/top_pick_card_home.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchInputHomeComponent(),
          Column(
            spacing: 14,
            children: [
          const HeroCardHomeComponent(),
          const CategoryButtonHomeComponent(),
          const CollectionCardHomeComponent(),
          const TopPickCardHomeComponent(),
            ],
          ),
        ],
      ),
    );
  }
}

