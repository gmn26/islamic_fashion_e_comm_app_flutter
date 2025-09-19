import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/product_detail_controller.dart';

class OtherProductInformationButtonComponent extends StatelessWidget {
  final String name;

  OtherProductInformationButtonComponent({
    super.key,
    required this.name,
  });

  final ProductDetailController productDetailController = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSelected = name == productDetailController.activeDetailProduct.value;

      return OutlinedButton(
        onPressed: () {
          productDetailController.changeActiveDetailProduct(name);
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: isSelected ? Color(0xFF008080) : Color(0xFFFFFFFF),
          foregroundColor: isSelected ? Color(0xFFFFFFFF) : Color(0xFF000000),
          side: BorderSide(
            width: isSelected ? 0 : 1,
            color: isSelected ? Colors.transparent : Colors.black26,
          ),
        ),
        child: Text(name),
      );
    });
  }
}
