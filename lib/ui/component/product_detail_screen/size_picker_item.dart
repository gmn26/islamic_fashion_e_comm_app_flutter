import 'package:flutter/material.dart';

class SizePickerItemComponent extends StatelessWidget {
  final String size;
  final String pickedSize;
  final void Function(String) handlePickSize;

  const SizePickerItemComponent({
    super.key,
    required this.size,
    required this.pickedSize,
    required this.handlePickSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        handlePickSize(size);
      },
      child: Container(
        width: 25.0,
        height: 25.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: size == pickedSize ? Color(0xFFE4B8AD) : Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(999.0),
        ),
        child: Text(size),
      ),
    );
  }
}
