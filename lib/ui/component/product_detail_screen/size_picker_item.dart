import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/product_detail_controller.dart';

class SizePickerItemComponent extends StatelessWidget {
  final String size;

  SizePickerItemComponent({
    super.key,
    required this.size,
  });

  final ProductDetailController productDetailController = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        productDetailController.changePickedSize(size);
      },
      child: Obx(() {
        final isSelected = size == productDetailController.pickedSize.value;

        return Container(
          width: 25.0,
          height: 25.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFFE4B8AD) : Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(999.0),
          ),
          child: Text(size),
        );
      }),
    );
  }
}
