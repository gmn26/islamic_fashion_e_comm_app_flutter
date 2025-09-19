import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/product_detail_controller.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_button.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_customer_ratings.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_details.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information_support.dart';

class OtherProductInformationComponent extends StatelessWidget {
  OtherProductInformationComponent({super.key});

  final ProductDetailController productDetailController = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OtherProductInformationButtonComponent(name: "Details"),
              SizedBox(width: 8),
              OtherProductInformationButtonComponent(name: "Support"),
              SizedBox(width: 8),
              OtherProductInformationButtonComponent(name: "Customer Ratings"),
            ],
          ),
        ),
        SizedBox(height: 6),

        Obx(() {
          final selected = productDetailController.activeDetailProduct.value;
          if (selected == "Details") {
            return const OtherProductInformationDetailsComponent();
          } else if (selected == "Support") {
            return const OtherProductInformationSupportComponent();
          } else if (selected == "Customer Ratings") {
            return const OtherProductInformationCustomerRatingsComponent();
          } else {
            return const SizedBox(); // fallback if needed
          }
        }),
      ],
    );
  }
}
