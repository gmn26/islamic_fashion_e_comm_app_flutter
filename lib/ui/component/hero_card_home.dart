import 'package:flutter/material.dart';

class HeroCardHomeComponent extends StatelessWidget {
  const HeroCardHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF5F5F5),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset("assets/img/hero.png", width: 180,),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Feb 15 - Apr 28"),
                Text(
                  "Enjoy 30%",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Discount",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFFE4B8AD),
                    foregroundColor: Color(0xFF202020),
                    side: BorderSide(width: 0, color: Colors.transparent),
                  ),
                  child: Text("Start Shopping"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}