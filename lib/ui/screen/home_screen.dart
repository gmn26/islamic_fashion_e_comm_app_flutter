import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/home_controller.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/basket_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/collections_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/home_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/more_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/stylist_tab.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.put(HomeController());

  Widget getTabContent(int val) {
    switch (val) {
      case 0:
        return HomeTab();
      case 1:
        return CollectionTab();
      case 2:
        return StylistTab();
      case 3:
        return BasketTab();
      case 4:
        return MoreTab();
      default:
        return HomeTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.toNamed("/user-profile");
          },
          icon: Icon(Icons.menu),
        ),
        title: Column(
          children: [
            Text(
              "Store Location",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.pin_drop, color: Colors.redAccent),
                Text(
                  "Empire Center - USA",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
        actionsPadding: const EdgeInsets.only(right: 12),
        actions: [Icon(Icons.shopping_bag_outlined)],
      ),
      body: Obx(() => getTabContent(homeController.activeTabIndex.value)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: homeController.activeTabIndex.value,
          onTap: (index) {
            homeController.changeActiveTabIndex(index);
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: "Collections",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Stylist"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Basket",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
}
