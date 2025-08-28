import 'package:flutter/material.dart';

class OtherProductInformationCustomerRatingsComponent extends StatelessWidget {
  const OtherProductInformationCustomerRatingsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What people says about our product.",
        ),
        Container(
          decoration: BoxDecoration(
          ),
          child: Row(
            children: [
              Text("User A")
            ],
          ),
        ),
      ],
    );
  }
}
