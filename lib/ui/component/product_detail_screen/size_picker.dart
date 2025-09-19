import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/size_picker_item.dart';

class SizePickerComponent extends StatelessWidget {
  const SizePickerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.0,
      children: [
        SizePickerItemComponent(size: "S"),
        SizePickerItemComponent(size: "M"),
        SizePickerItemComponent(size: "L"),
        SizePickerItemComponent(size: "XL"),
      ],
    );
  }
}