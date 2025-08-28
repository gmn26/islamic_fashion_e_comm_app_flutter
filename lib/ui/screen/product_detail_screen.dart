import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/other_product_information.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/component/product_detail_screen/size_picker.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 500.0,
            decoration: BoxDecoration(color: Color(0xFF333333)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  spacing: 12.0,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Modern Cotton Hijab",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      spacing: 50.0,
                      children: [
                        Row(
                          spacing: 8.0,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFed9e38),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 2.0,
                                horizontal: 6.0,
                              ),
                              child: Row(
                                children: [Icon(Icons.star), Text("4.8")],
                              ),
                            ),
                            Text(
                              "(185 Reviews)",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          "Price: \$250USD",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizePickerComponent(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Color",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const OtherProductInformationComponent(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
