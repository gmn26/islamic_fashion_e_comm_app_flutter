import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/size_picker_item.dart';

class SizePickerComponent extends StatefulWidget {
  const SizePickerComponent({super.key});

  @override
  State<SizePickerComponent> createState() => _SizePickerComponentState();
}

class _SizePickerComponentState extends State<SizePickerComponent> {
  String pickedSize = "S";

  void _handlePickSize (String val) {
    setState(() {
      pickedSize = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.0,
      children: [
        SizePickerItemComponent(size: "S", pickedSize: pickedSize, handlePickSize: _handlePickSize),
        SizePickerItemComponent(size: "M", pickedSize: pickedSize, handlePickSize: _handlePickSize),
        SizePickerItemComponent(size: "L", pickedSize: pickedSize, handlePickSize: _handlePickSize),
        SizePickerItemComponent(size: "XL", pickedSize: pickedSize, handlePickSize: _handlePickSize),
      ],
    );
  }
}