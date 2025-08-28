import 'package:flutter/material.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/basket_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/collections_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/home_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/more_tab.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/tabs/stylist_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  Widget getTabContent(int val) {
    if(val == 0){
      return HomeTab();
    } else if (val == 1){
      return CollectionTab();
    } else if (val == 2) {
      return StylistTab();
    } else if (val == 3) {
      return BasketTab();
    } else if (val == 4) {
      return MoreTab();
    } else {
      return HomeTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: Icon(Icons.menu),
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
      body: getTabContent(selectedTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTabIndex,
        onTap: (index) {
          setState(() {
            selectedTabIndex = index;
          });
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
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}
