import 'package:get/get.dart';

class HomeController extends GetxController {
  var activeTabIndex = 0.obs;
  var activeCategoryButton = "All Items".obs;

  void changeActiveTabIndex (int index) {
    activeTabIndex.value = index;
  }
  void changeActiveCategoryButton (String value) {
    activeCategoryButton.value = value;
  }
}