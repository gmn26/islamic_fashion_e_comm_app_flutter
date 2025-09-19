import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  var activeDetailProduct = "Details".obs;
  var pickedSize = "S".obs;

  void changeActiveDetailProduct (String value) {
    activeDetailProduct.value = value;
  }
  void changePickedSize (String value) {
    pickedSize.value = value;
  }
}