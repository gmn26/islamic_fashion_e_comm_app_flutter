import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/home_tab/collection_card_item.dart';

class TopPickCardHomeComponent extends StatelessWidget {
  const TopPickCardHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Pick",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text("See All", style: TextStyle(color: Colors.black87)),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 8,
            children: [
              SizedBox(width: 4.0),
              CollectionCardItemComponent(),
              CollectionCardItemComponent(),
              CollectionCardItemComponent(),
              CollectionCardItemComponent(),
              CollectionCardItemComponent(),
              SizedBox(width: 4.0),
            ],
          ),
        ),
      ],
    );
  }
}