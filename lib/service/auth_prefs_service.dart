import 'package:shared_preferences/shared_preferences.dart';

class AuthPrefsService {
  static const String _keyUsername = "username";

  Future<void> saveUserInformation(String username) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyUsername, username);
  }

  Future<String?> getUserInformation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyUsername);
  }

  Future<void> deleteUserInformation() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUsername);
  }
}