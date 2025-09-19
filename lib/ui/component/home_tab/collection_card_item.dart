import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CollectionCardItemComponent extends StatelessWidget {
  const CollectionCardItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/product-detail");
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/736x/7e/1e/d5/7e1ed51df8f7a3dd827ba5f81b45d955.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 15,
              top: 15,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.white,
                ),
                child: const Icon(Icons.star_border_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
