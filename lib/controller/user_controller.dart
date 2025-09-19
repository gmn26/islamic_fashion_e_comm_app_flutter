import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/service/auth_prefs_service.dart';

class UserController extends GetxController {
  final AuthPrefsService authPrefsService;
  UserController(this.authPrefsService);

  var username = ''.obs;
  var isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadUser();
  }

  Future<void> loadUser() async {
    final storedUserInformation = await authPrefsService.getUserInformation();
    if(storedUserInformation != null) {
      username.value = storedUserInformation;
      isLoggedIn.value = true;
    }
  }

  Future<void> login(String username) async {
    await authPrefsService.saveUserInformation(username);

    this.username.value = username;
    isLoggedIn.value = true;
  }

  Future<void> logout() async {
    await authPrefsService.deleteUserInformation();

    username.value = '';
    isLoggedIn.value = false;
  }
}