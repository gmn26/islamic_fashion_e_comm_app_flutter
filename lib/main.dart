import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/user_controller.dart';
import 'package:islamic_fashion_e_comm_app_flutter/service/auth_prefs_service.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/screen/home_screen.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/screen/login_screen.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/screen/product_detail_screen.dart';
import 'package:islamic_fashion_e_comm_app_flutter/ui/screen/user_profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final authPrefsService = AuthPrefsService();
  final userController = UserController(authPrefsService);

  await userController.loadUser();

  Get.put(userController);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserController userController = Get.find();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: userController.isLoggedIn.value ? "/home" : "/login",
      getPages: [
        GetPage(
          name: "/login",
          page: () {
            return LoginScreen();
          },
        ),
        GetPage(
          name: "/home",
          page: () {
            return HomeScreen();
          },
        ),
        GetPage(
          name: "/product-detail",
          page: () {
            return const ProductDetailScreen();
          },
        ),
        GetPage(
          name: "/user-profile",
          page: () {
            return UserProfileScreen();
          },
        ),
      ],
    );
  }
}
