import 'package:flutter/material.dart';

class CategoryButtonItemComponent extends StatelessWidget {
  final String name;
  final String activeMenu;
  final void Function(String) handleActiveMenuChange;

  const CategoryButtonItemComponent({
    super.key,
    required this.name,
    required this.activeMenu,
    required this.handleActiveMenuChange,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        handleActiveMenuChange(name);
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: name == activeMenu
            ? Color(0xFF008080)
            : Color(0xFFFFFFFF),
        foregroundColor: name == activeMenu
            ? Color(0xFFFFFFFF)
            : Color(0xFF000000),
        side: BorderSide(
          width: name == activeMenu ? 0 : 1,
          color: name == activeMenu ? Colors.transparent : Colors.black26,
        ),
      ),
      child: Text(name),
    );
  }
}
