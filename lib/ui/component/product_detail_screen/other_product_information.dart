import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/core/category_button_item.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_customer_ratings.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_details.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_support.dart';

class OtherProductInformationComponent extends StatefulWidget {
  const OtherProductInformationComponent({super.key});

  @override
  State<OtherProductInformationComponent> createState() => _OtherProductInformationComponentState();
}

class _OtherProductInformationComponentState extends State<OtherProductInformationComponent> {
  String activeMenu = "Details";

  void _handleActiveMenuChange(String val) {
    setState(() {
      activeMenu = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing:8,
            children: [
              CategoryButtonItemComponent(name: "Details", activeMenu: activeMenu, handleActiveMenuChange: _handleActiveMenuChange),
              CategoryButtonItemComponent(name: "Support", activeMenu: activeMenu, handleActiveMenuChange: _handleActiveMenuChange),
              CategoryButtonItemComponent(name: "Customer Ratings", activeMenu: activeMenu, handleActiveMenuChange: _handleActiveMenuChange),
            ],
          ),
        ),
        if(activeMenu == "Details")
          const OtherProductInformationDetailsComponent(),
        if(activeMenu == "Support")
          const OtherProductInformationSupportComponent(),
        if(activeMenu == "Customer Ratings")
          const OtherProductInformationCustomerRatingsComponent(),
      ],
    );
  }
}