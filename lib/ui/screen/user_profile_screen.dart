import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/user_controller.dart';
import 'package:islamic_fashion_e_comm_app_flutter/service/auth_prefs_service.dart';

class UserProfileScreen extends StatelessWidget {
  final UserController userController = Get.put(
    UserController(AuthPrefsService()),
  );

  UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F4F5),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              try {
                await userController.logout();
                Get.offAllNamed('/login');
              } catch (e) {
                Get.snackbar(
                  "Failed To Logout",
                  e.toString(),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                );
              }
            },
            icon: Icon(Icons.logout, color: Colors.red),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
                ),
                Stack(
                  children: [
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF333333),
                        borderRadius: BorderRadius.circular(999),
                        border: Border.all(
                          color: Color(0xFF008080),
                          width: 8.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      right: 4,
                      width: 40.0,
                      height: 40.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.edit),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    spacing: 10.0,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Personal Info",
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 15.0,
                        children: [
                          Icon(Icons.person_2_outlined, size: 28.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name"),
                                Text(
                                  userController.username.value,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 15.0,
                        children: [
                          Icon(Icons.mail_outline, size: 28.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("E-mail"),
                                Text(
                                  "ghazynovrial@gmail.com",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 15.0,
                        children: [
                          Icon(Icons.phone_in_talk_outlined, size: 28.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Phone Number"),
                                Text(
                                  "08123123123",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
