import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_fashion_e_comm_app_flutter/controller/user_controller.dart';

class LoginScreen extends StatelessWidget {
  final _usernameController = TextEditingController();

  final UserController userController = Get.find();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () async {
                try {
                  await userController.login(_usernameController.text.trim());
                  Get.offAllNamed('/home');
                } catch (e) {
                  Get.snackbar(
                    "Login Failed",
                    e.toString(),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red.withOpacity(0.7),
                    colorText: Colors.white,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
