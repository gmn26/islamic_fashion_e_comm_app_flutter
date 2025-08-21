import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/category_button_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/collection_card_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/hero_card_home.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/search_input_home.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchInputHomeComponent(),
        const HeroCardHomeComponent(),
        const CategoryButtonHomeComponent(),
        const CollectionCardHomeComponent(),
      ],
    );
  }
}

